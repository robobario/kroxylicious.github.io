---
layout: post
title:  "kroxylicious-junit5-extension release 0.7.0"
date:   2023-11-24 16:22:41 +1300
author: "Sam Barker"
author_url: "https://www.github.com/sambarker"
categories: 
  - releases
  - junit5-extension
---

The Kroxylicious project is very pleased to announce the [0.7.0](https://github.com/kroxylicious/kroxylicious-junit5-extension/releases/tag/v0.7.0) release of our Junit5 Extension which adds the ability for test authors to automatically inject topics into their tests. 

The Junit5 extension aims to simplify writing tests against Kafka clusters by providing test authors with ability to decoratively control a Kafka cluster to test against without worrying about the details of provisioning the cluster. 

```java
import java.time.Duration;
import java.util.Set;
import java.util.concurrent.ExecutionException;

import org.apache.kafka.clients.consumer.Consumer;
import org.apache.kafka.clients.producer.Producer;
import org.apache.kafka.clients.producer.ProducerRecord;
import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;

import io.kroxylicious.testing.kafka.api.KafkaCluster;
import io.kroxylicious.testing.kafka.common.BrokerCluster;
import io.kroxylicious.testing.kafka.junit5ext.KafkaClusterExtension;
import io.kroxylicious.testing.kafka.junit5ext.Topic;

@ExtendWith(KafkaClusterExtension.class)
class ExampleTest {

    @BrokerCluster
    KafkaCluster cluster;

    @Test
    void shouldConsumePublishedRecord(Topic topic, Producer<String, String> producer, Consumer<String, String> consumer)
            throws ExecutionException, InterruptedException {
        //Given
        producer.send(new ProducerRecord<>(topic.name(), "my-key", "Hello, world!")).get();
        consumer.subscribe(Set.of(topic.name()));

        //When
        var records = consumer.poll(Duration.ofSeconds(10));

        //Then
        consumer.close();
        Assertions.assertThat(records).hasSize(1).extractingResultOf("value").containsExactly("Hello, world!");
    }
}
```

Further details about controlling the Kafka Cluster such as enabling KRaft support are can be found in the projects [readme](https://github.com/kroxylicious/kroxylicious-junit5-extension).

Please let us know, through [Slack](https://kroxylicious.slack.com) or [GitHub](https://github.com/kroxylicious/kroxylicious-junit5-extension/issues), if you find the extension interesting or helpful  
