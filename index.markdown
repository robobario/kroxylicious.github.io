---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: index
tagline: "An open-source network proxy framework for Apache Kafka"
---

{% capture card_content %}
<p>
<strong>Kroxylicious</strong> is a project aiming to provide an open source pluggable framework for
writing network proxies that understand the Apache Kafka protocol.
</p>
<br />
<h5>Why?</h5>
<p>
Proxies are a powerful architectural pattern which are widely used for other
application-layer protocols, such as HTTP.
</p>
<p>
They <em>could</em> solve a number of problems organizations have using Kafka. While
some
organizations running Apache Kafka have written Kafka-aware proxies, they have tended to
remain closed-source and do very specific things.
</p>
<p>
Kroxylicious is an early-stage project which seeks to lower the cost of developing Kafka
proxies by providing a lot of the common requirements out-of-the-box.
</p>
<p>
This lets developers focus on the logic needed to get <em>their</em> proxy to do what
<em>they</em> need.
</p>
{% endcapture %}
{% include card.html content=card_content shadow="shadow" %}