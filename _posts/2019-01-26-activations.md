---
layout: post
title: "All these Activation Functions"
date: 2019-01-26
comments: true
categories: machine-learning
---

Amidst all the Deep Learning frameworks and pre-trained models, it helps to have an intuitive understand what a model is doing internally. The choice of activation functions used in your net might be one that you don't think about as 'deep'ly. Well, here's a post that should serve to build up some of that intuition the next time you train your net!

Activation functions are what make the network serve as well as it can like your brain. You want them to be able to learn complex relations between the inputs and outputs it sees, especially if you want the network to do a great job at vision and language tasks. On a lower level, they serve to bring non-linearities in your network, in an attempt to serve as an approximator for any of the complex relations you're trying to learn. Why does it have to be non-linear? Here's an example of a small network:

[insert image]

Here's the relation between the inputs and the output. The network will learn the weights:

$$
y_1 = w_{11}x_1 + w_{21}x_2 + b_1\\
y_2 = w_{12}x_1 + w_{22}x_2 + b_2\\
$$

You can easily see that the function that maps the inputs $x$ to the output $y$ is linear. If you were to add more layers, the $x$'s would be replaced by the outputs of the intermediate layers, still keeping the final transformation linear.

Sadly, this linear transformation is not enough to help the network ace complex problems like recognising images of cats. Why is that? Imagine an input space given below that is non-linear:

[insert image]

Here's what a linear decision boundary looks like in this space:

[insert image]

And what a non-linearity can learn:

[insert image]

Complex problems like these are what we want our network to be able to learn.

