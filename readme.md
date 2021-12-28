
## Solution
```________________________________________________________________________
```

* There was a bug in the original repo sent, the go module package was initialize to a different  github repo which doesn't exist.

* To secure the  temporal ,  dns name are needed to generate certificate.

#### Workaround
I tried using the aws dns loadbalancer  as CN, but the name  can be used to generare certificate   due to it's length.


### CI/CD 

* The CI/CD was implemeted using Github actions, any push to the main branch triggers the job.

* It builds and push a docker image to ECR then deploys to kubernetes.

* The temporal web can be accessed via  [a4de88e42cb7d4d67a553611f6dc082d-684175084.us-west-1.elb.amazonaws.com](http://a4de88e42cb7d4d67a553611f6dc082d-684175084.us-west-1.elb.amazonaws.com:8088) 

url to an cation [link](https://github.com/akinpelu746/hello-workflow/actions/runs/1630688420)

To imporve the app

* Test can be performed in  the CI/CD
* Deployment to kubernetes can be done via gitops tools
* Horizontal or verical Autoscaler can be configured for the app 
* The temporal server can be fine tuned to determine number of pods(front end,History subsystem, Matching subsystem, Worker service) needed for for optimal performance.
* Service Mesh can be used for traffic  managment and control
* Monitoring and dashboard should be created.





























### Test workflow



Hi, If you are viewing this, it is because you scaled through to the next round of the recruitment for the  DevOps position at Wafi. Congratulations 🎉✨.

At Wafi, we use the microservice software architecture. The microservices approach to software development helps teams deploy faster, but it comes with some issues, one of them is data consistency. How can data change in microservice A be propagated to microservice B and C? Send it via an event?

Yes, that works but what if B updates itself and C had an hiccups and just could not make the update 🙄.

Then that means we need to have a mechanism that allows us to handle such failures, make retries and what-else? Just how many of the situations like above do we have to write failures and retry logic for? 

At Wafi, we use [Temporal](https://temporal.io) as a microservice orchestrator which helps solve the issues stated above for us.

## Your task

* Deploy a temporal cluster for production. Follow the deployment guide [here](https://docs.temporal.io/docs/server/production-deployment). A plus is if you are able to implement any of the security considerations stated [here](https://docs.temporal.io/docs/server/security)

* Package this temporal app as a docker image
  * write a CICD for the app.
  * deploy the app using Kubernetes
  * How would you improve this app?



This is required for the worker to be up

```bash
go run ./worker/main.go
```

​	

Execute the helloworkflow

```bash
go run ./starter/main.go
```



Please note that the temporal server needs to be up before the above commands work



See you soon 👋🏻.

