A training pathway follows the same structure as course pathway files that was discussed in the scenario [katacoda.com/scenario-examples/scenarios/create-course](https://katacoda.com/scenario-examples/scenarios/create-course).

Clone the example repository with the command `git clone https://github.com/katacoda/scenario-examples.git katacoda-scenario-examples`{{execute}}

Within the root of a repository the training pathway files need to be in a directory called training. The contents of the course has been defined as `katacoda-scenario-examples/training/training-example-pathway.json`{{open}}.

Within the file, the training outlines the content that will be delivered. In this case, the scenario from the Istio workshop will be included. 

<pre>
{
"pathway_id": "istio",
"id": "workshop/deploying-istio",
"course_id": "deploying-istio",
"title": "Deploying Istio to Kubernetes",
"description": "Learn how to deploy Istio to a Kubernetes cluster"
}
</pre>

The **id** is the scenario id and any courses that it could be within, in this case the course is called workshop. The **course_id** allows the ID to be overridden and the possibility to change the URL.

When live, the training would appear under the profile at [katacoda.com/scenario-examples/training/training-example](https://katacoda.com/scenario-examples/training/training-example). 

When delivering the training, Katacoda for Trainers, offers a number of capabilities. Firstly, attendees would have guaranteed capacity, with the possibility of increased performance that last for the entire workshop.