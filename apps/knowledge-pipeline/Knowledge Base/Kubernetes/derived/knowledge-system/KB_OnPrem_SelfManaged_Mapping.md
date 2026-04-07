# KB OnPrem SelfManaged Mapping

Self-managed/on-prem mapping bootstrap থেকে day-2 ops পর্যন্ত transcript evidence anchored।

## Kubeadm
kubeadm bootstrap flow control plane bring-up, certificate generation, token-based node join, এবং upgrade sequence define করে।

## Container Runtime
Docker deprecation context, containerd/CRI alternatives, এবং kubelet-runtime contract operationally critical।

## CNI Plugins
CNI network model pod communication path এবং network policy behavior impact করে।

## CSI
CSI storage lifecycle abstraction on-prem storage backend integration সহজ করে।

## Ingress Controllers
Ingress controller deployment model traffic management boundary define করে।

## HA Control Plane
Multi-control-plane topology etcd quorum, API endpoint HA, এবং failure domain isolation require করে।

## Transcript Source Contributions

### Source 1: certified-kubernetes-administrator-with-practice-tests/01_Introduction/002_Certification.extraction.md::E18
- Source: certified-kubernetes-administrator-with-practice-tests / 01_Introduction / 002_Certification.txt
- Evidence: The room you're attending, the exam from, the system you're using to give the test, your network connectivity, etc. all of these are described in detail in the Candidate Handbook available on the certification website.

### Source 2: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/007_Cluster Architecture.extraction.md::E22
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 007_Cluster Architecture.txt
- Evidence: The master node does all of these using a set of components together known as the control plane components.

### Source 3: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/007_Cluster Architecture.extraction.md::E55
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 007_Cluster Architecture.txt
- Evidence: If you wish to host the control plane components as containers.

### Source 4: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E1
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So you're going to come across Docker and community many times going forward.

### Source 5: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E2
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So when you read older blogs or documentation pages, you'll see Docker mentioned along with Kubernetes.

### Source 6: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E3
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And when you read newer blogs you will see container D, and you'll wonder what the difference is between the two.

### Source 7: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E4
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And there are a few CLI tools like Ktor, CRI control or Node Control.

### Source 8: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E5
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And you'll wonder what are these CLI tools and and which one should you be using.

### Source 9: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E6
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So that's what I'm going to explain in this video.

### Source 10: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E7
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So let's go back in time to the beginning of the container era.

### Source 11: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E8
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And in the beginning there was just Docker and there were other tools like rocket.

### Source 12: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E9
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: But Docker's user experience made working with containers super simple, and hence Docker became the most dominant container tool.

### Source 13: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E10
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And then came Kubernetes to orchestrate Docker.

### Source 14: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E11
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So Kubernetes was built to orchestrate Docker specifically in the beginning.

### Source 15: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E12
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So Docker and Kubernetes were tightly coupled.

### Source 16: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E13
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And back then Kubernetes only worked with Docker and didn't support any other container solutions.

### Source 17: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E14
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And then Kubernetes grew in popularity as a container orchestrator.

### Source 18: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E15
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And now other container runtimes like rocket wanted in Kubernetes.

### Source 19: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E16
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: Users needed it to work with container runtimes that are other than just Docker.

### Source 20: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E17
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And so Kubernetes introduced an interface called Container Runtime Interface or Cry.

### Source 21: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E18
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So cry allowed any vendor to work as a container runtime for Kubernetes, as long as they adhere to the OCI standards.

### Source 22: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E19
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So OCI stands for Open Container Initiative, and it consists of an image spec and a runtime spec.

### Source 23: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E20
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: Image spec means the specifications on how, uh, an image should be built.

### Source 24: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E21
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So that's what I defined.

### Source 25: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E22
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: An image spec, defined the specifications on how an image should be built, and the runtime spec defined the standards on how any container runtime should be developed.

### Source 26: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E23
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So keeping these standards in mind, anyone can build a container runtime, and that can be used by anybody to to work with Kubernetes.

### Source 27: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E24
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So that was the idea.

### Source 28: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E25
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So rocket and other container runtimes that adhere to the OCI standards were now supported as container runtimes for Kubernetes via the CRI.

### Source 29: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E26
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: However, uh, Docker wasn't built to support the CRI standards because remember, Docker was built way before CRI was introduced and Docker still was the dominant container tool used by most.

### Source 30: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E27
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: Kubernetes had to continue to support Docker as well.

### Source 31: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E28
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And so Kubernetes introduced what is known as uh, Docker shim, which was a hacky, uh, but temporary way to continue to support Docker outside of the container runtime interface.

### Source 32: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E29
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So while most other container runtimes worked through the CRI, Docker continued to work without it.

### Source 33: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E30
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So, um, now you see Docker isn't just a container runtime alone.

### Source 34: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E31
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: Docker consists of multiple tools that are put together for example, the Docker CLI, the Docker API, the build tools that help in building images.

### Source 35: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E32
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: There was support for volumes of security.

### Source 36: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E33
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And finally also the container runtime called Runcie and the daemon that managed Runcie.

### Source 37: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E34
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And that's that was called as container.

### Source 38: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E35
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So container D is CRI compatible and can work directly with Kubernetes as all other runtimes.

### Source 39: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E36
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So container D can be used as a runtime on its own separate from Docker.

### Source 40: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E37
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So now you have container D as a separate runtime and Docker separately.

### Source 41: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E38
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So Kubernetes continued to maintain support for Docker Engine directly.

### Source 42: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E39
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: However having to maintain the Docker shim was an unnecessary effort and added complications, so it was decided in version 1.24 release of Kubernetes to remove Dockershim completely, and so support for Docker was removed.

### Source 43: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E40
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: But you see all the images that were built, uh, before Docker was removed.

### Source 44: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E41
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So all the Docker images, uh, continue to work because Docker followed the image spec from the OCI standard.

### Source 45: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E42
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So all the images built by Docker follow the standard.

### Source 46: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E43
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So they continue to work with Containerd.

### Source 47: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E44
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: But Docker itself was removed as a supported runtime from Kubernetes.

### Source 48: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E45
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So that's kind of the whole story.

### Source 49: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E46
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And now let's look into container D more specifically.

### Source 50: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E47
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So container D although is part of Docker, is a separate project on its own now and is a member of CNCF, uh, with the graduated uh status.

### Source 51: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E48
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So you can now install container D on its own without having to install Docker itself.

### Source 52: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E49
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So if you don't really need Docker other features, you could ideally just install container uh d alone.

### Source 53: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E50
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So typically we ran containers uh using the docker run command.

### Source 54: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E51
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: Uh when we, when we had Docker.

### Source 55: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E52
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And if Docker isn't installed then how do you run containers with just uh, container D.

### Source 56: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E53
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: Now once you install Containerd, it comes with a command line tool called Ktor.

### Source 57: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E54
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And this tool is solely made for debugging Containerd and is not very user friendly as it only supports a limited set of features.

### Source 58: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E55
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And this is what you can see in the documentation pages for for this particular tool.

### Source 59: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E56
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So for the other than the limited set of features that it provides, any any other way that you want to interact with Containerd, you'll have to rely on making API calls directly, which is not the the most user friendly way for us to operate.

### Source 60: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E57
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So just to give you an idea, this can be the CTR command can be used to perform basic container related activities such as pull images.

### Source 61: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E58
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: For example, to pull uh, redis image, you would run the CTR images, pull command followed by the address of the image.

### Source 62: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E59
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And to run a container, um, we use the CTL run command and specify the image address.

### Source 63: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E60
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: But as I mentioned, this tool is solely made for debugging containerd and is not very user friendly and not to be used for running or managing containers on on a production environment.

### Source 64: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E61
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So a better alternative recommended is the nerd control tool or nerd CTL tool.

### Source 65: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E62
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So the nerd control tool is a command line tool that's very similar to Docker.

### Source 66: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E63
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So it's like Docker like CLI for container D.

### Source 67: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E64
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: It kind of supports all or most of the options that Docker supports.

### Source 68: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E65
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And apart from that it has the added benefit that it can give us access to the newest, uh, features implemented into container D.

### Source 69: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E66
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So for example, we can work with the encrypted container images or other new feature that will eventually be implemented into the Docker commands in the future.

### Source 70: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E67
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: It also supports lazy pulling of images, P2P image distribution, image signing and verifying and namespaces in Kubernetes, which is not available, uh, in Docker.

### Source 71: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E68
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So the nerd control tool works very similar to docker CLI.

### Source 72: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E69
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So instead of Docker you would ideally simply have to replace it with node control.

### Source 73: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E70
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So you can run almost all Docker commands that interact with containers like this.

### Source 74: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E71
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So some examples are instead of running the docker run command to create a container to run a container, you could just uh, use the net control run command.

### Source 75: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E72
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And similarly, uh, let's say you want to use some options for port mappings or exposing ports, uh, with the dash p option, uh, for the docker run command, you could do the same with node control.

### Source 76: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E73
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: Simply replace Docker with node control.

### Source 77: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E74
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So so that's pretty easy and straightforward.

### Source 78: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E75
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So now that we have talked about CTR and the node control tool, uh it's important to talk about another command line utility known as CRI, CTL or CRI control.

### Source 79: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E76
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So earlier we talked about the container runtime interface or CRI which is a single interface used to connect CRI compatible container runtimes the container, the rocket and others.

### Source 80: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E77
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So, uh, the CRI control is a command line utility that is used to interact with the CRI compatible container runtime.

### Source 81: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E78
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So this is kind of an interaction from the Kubernetes perspective.

### Source 82: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E79
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So this this tool is kind of maintained by uh developed and maintained by the Kubernetes community.

### Source 83: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E80
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And this is uh, this tool works across all the different container runtimes.

### Source 84: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E81
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: Um, as opposed to earlier You had the CTR and the node control tool that were built by the Containerd community specifically for Containerd.

### Source 85: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E82
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: This particular tool is from the Kubernetes perspective that works across different container runtimes.

### Source 86: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E83
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So it must be installed separately and it is used to inspect and debug container runtime.

### Source 87: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E84
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So this again is not ideally used to create containers unlike Docker or the node control um utility.

### Source 88: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E85
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: This is again a debugging tool.

### Source 89: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E86
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: You can technically create containers with the CRI control utility, but it's not easy.

### Source 90: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E87
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: It's only to be used for some special debugging purposes.

### Source 91: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E88
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And the remember that it kind of works along with the Kubelet.

### Source 92: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E89
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So we know that the Kubelet is responsible for ensuring that the specific number of containers or pods are available on, uh, on node at a time.

### Source 93: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E90
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So if you kind of go through the CRI control, uh, utility and try and create containers with it, then eventually Kubelet is going to delete them because the Kubelet is unaware of, uh, some of those containers or pods that are created outside of its knowledge.

### Source 94: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E91
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So anything that it sees is going to go and delete it.

### Source 95: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E92
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So because of those things, remember that the cry control utility is only used for debugging purposes and getting into containers and all of that.

### Source 96: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E93
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So let's look at some of the command line examples.

### Source 97: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E94
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So you simply run the right control crea CTL command for this.

### Source 98: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E95
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And this can be used to perform basic container related activities such as pull images or list existing images.

### Source 99: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E96
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: List containers very similar to the docker command where you use the PS command.

### Source 100: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E97
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So uh, in Docker you will run the PS command.

### Source 101: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E98
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: Here you would run the CRI control PS command and to to run a command inside a container in Docker.

### Source 102: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E99
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: Remember we use the exact command and it's the same here.

### Source 103: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E100
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: Um, along with the same options such as the dash I and dash T.

### Source 104: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E101
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: Uh, and then you specify the container, uh, and then the command that needs to be run to view the logs.

### Source 105: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E102
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: Again use the CRI control logs command very similar to Docker command.

### Source 106: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E103
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And uh, one major difference is that the CRI cry control command is also aware of ports, so you can list ports by running the Control Ports command.

### Source 107: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E104
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So this wasn't something that Docker um, was aware of.

### Source 108: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E105
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So while working with Kubernetes in the past, uh, we used Docker commands a lot to troubleshoot containers and view logs, especially on the worker nodes.

### Source 109: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E106
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: Uh, now you're going to use the cry control command to do so.

### Source 110: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E107
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So the syntax is a lot similar.

### Source 111: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E108
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: Uh, so it shouldn't be uh, shouldn't be really hard.

### Source 112: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E109
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So here's a chart that lists the comparison between Docker and uh, the cry control uh, command line tool.

### Source 113: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E110
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So as you can see, a lot of commands such as attach exec, uh, images, info, inspect logs, PS stats, version, etc. work exactly the same way, and some of the commands to create, remove and start and stop images work similarly too.

### Source 114: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E111
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So a full list of differences can be found in the the link given below.

### Source 115: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E112
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So um, since as I mentioned, cry control can be used to connect to any cry compatible runtime, remember to set the right endpoint if you have multiple container runtimes configured or if you want.

### Source 116: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E113
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: Cry control to interact with the specific runtime.

### Source 117: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E114
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So for example, if you haven't configured anything by default is going to connect to these sockets in this particular order.

### Source 118: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E115
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So it's going to try and connect to Dockershim first and then Containerd and then Cri-o.

### Source 119: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E116
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And then you have the cri docker d that's, that's kind of the order that it follows.

### Source 120: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E117
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: But if you want to override that and set a specific endpoint, you use the runtime endpoint option with the CRI control command line.

### Source 121: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E118
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: Or you could use the container runtime endpoint environment variable.

### Source 122: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E119
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: Set the environment variable to the to the right endpoint.

### Source 123: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E120
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So to summarize, we have the Ktor command line utility that comes with Containerd and works with Containerd, which is used for debugging purposes only and has a very limited limited set of features.

### Source 124: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E121
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So ideally you wouldn't be using this at all.

### Source 125: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E122
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So you can kind of ignore this.

### Source 126: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E123
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: Then we have the nerd control CLI, which is again from the Containerd community.

### Source 127: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E124
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: But this is a docker like CLI for container D, used for general purpose to create containers and supports the same or more features than docker CLI.

### Source 128: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E125
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So this is something that I think we'll be using a lot more going forward.

### Source 129: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E126
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And then we have the um CRI control utility, which is uh, from the Kubernetes community, uh, mainly used to interact with CRI compatible runtimes.

### Source 130: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E127
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So it's not just for container D, this can be used for all CRI supported runtimes.

### Source 131: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E128
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: Again this is mainly for to be used for debugging purposes.

### Source 132: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E129
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So if you look at the comparisons here you can see that CTR and CRI control are used mainly for debugging purposes, whereas the nerve control is used for general purpose.

### Source 133: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E130
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: The CTR and node control uh are from the container the community and works with container D, whereas CRI control is from the Kubernetes community and works across all CRI compatible runtimes.

### Source 134: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E131
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So our labs originally had Docker installed on all the nodes.

### Source 135: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E132
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So we used the Docker commands to troubleshoot.

### Source 136: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E133
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: But now it's all container d.

### Source 137: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E134
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So remember to use the um the CRI control command instead to troubleshoot.

### Source 138: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E135
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: Well that's all for now.

### Source 139: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E136
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: Thank you for listening.

### Source 140: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/009_A note on Docker deprecation.extraction.md::E6
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 009_A note on Docker deprecation.txt
- Evidence: So container D is the CRI compatible and can.

### Source 141: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/015_Kube Scheduler.extraction.md::E17
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 015_Kube Scheduler.txt
- Evidence: Depending on certain criteria, you may have pods with different resource requirements.

### Source 142: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/017_Kube Proxy.extraction.md::E39
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 017_Kube Proxy.txt
- Evidence: We have now covered a high level overview of the Kubernetes components, including control plane and node level components like kube proxy.

### Source 143: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/018_Pods.extraction.md::E41
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 018_Pods.txt
- Evidence: Let's assume we were developing a process or a script to deploy our application on a Docker host.

### Source 144: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/019_Pods with YAML.extraction.md::E59
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 019_Pods with YAML.txt
- Evidence: To see detailed information about the pod, run the kubectl describe pod command.

### Source 145: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/020_Demo - Pods with YAML.extraction.md::E71
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 020_Demo - Pods with YAML.txt
- Evidence: And as before if you want to get more details about the pod, you can always run the kubectl describe command and specify the the name of the pod.

### Source 146: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/021_Practice Test Introduction.extraction.md::E10
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 021_Practice Test Introduction.txt
- Evidence: This could be a Linux terminal if you are learning Linux shell scripting or git, and this could be a Docker host if you are learning Docker or the Kubernetes control plane.

### Source 147: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/025_Lab Solution - Pods (optional).extraction.md::E20
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 025_Lab Solution - Pods (optional).txt
- Evidence: You must look at one of the new pods in detail to figure this out, so let's pick one of the pods, this one, and we know that to look at it in detail, we've got to run the kubectl describe command.

### Source 148: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/025_Lab Solution - Pods (optional).extraction.md::E26
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 025_Lab Solution - Pods (optional).txt
- Evidence: So one way to do this is we've already run the kubectl describe pod command, and we can see that this is on node control plane, and we could actually run the the describe command against each pod, so that's one way to figure that out.

### Source 149: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/025_Lab Solution - Pods (optional).extraction.md::E27
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 025_Lab Solution - Pods (optional).txt
- Evidence: Another way, and an easier way, is to just run kubectl get pods command with the wide option, and here you get to see the node and it says control plane, so all of the new pods are created on the control plane node, select Control Plane.

### Source 150: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/025_Lab Solution - Pods (optional).extraction.md::E32
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 025_Lab Solution - Pods (optional).txt
- Evidence: So that's one way to figure that out or you could always run the describe command to see that in detail, so here you see containers and then you have one container here, that's Engine x and the other one right here.

### Source 151: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/028_Lab Solution - ReplicaSets (optional).extraction.md::E13
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 028_Lab Solution - ReplicaSets (optional).txt
- Evidence: And for that we know we have to run the Kubectl describe command.

### Source 152: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/028_Lab Solution - ReplicaSets (optional).extraction.md::E14
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 028_Lab Solution - ReplicaSets (optional).txt
- Evidence: And we're gonna run describe ReplicaSet and then new ReplicaSet and hit the the tab key to auto complete the names of what you're looking for.

### Source 153: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/028_Lab Solution - ReplicaSets (optional).extraction.md::E25
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 028_Lab Solution - ReplicaSets (optional).txt
- Evidence: So, let's run the Kubectl describe command and look at any one of the pods in a bit more detail.

### Source 154: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/032_Lab Solution - Deployments (optional).extraction.md::E32
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 032_Lab Solution - Deployments (optional).txt
- Evidence: Describe pod.

### Source 155: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/032_Lab Solution - Deployments (optional).extraction.md::E38
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 032_Lab Solution - Deployments (optional).txt
- Evidence: The get commands, and the describe commands.

### Source 156: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/037_Lab Solution - Services (optional).extraction.md::E15
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 037_Lab Solution - Services (optional).txt
- Evidence: So we're gonna do a kubectl describe node and we're gonna describe the service named Kubernetes.

### Source 157: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/037_Lab Solution - Services (optional).extraction.md::E48
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 037_Lab Solution - Services (optional).txt
- Evidence: So, and that's when, when we look at the the output of the kubectl describe command that we can identify the additional endpoints apart from what we, what we thought we had configured, right?

### Source 158: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/037_Lab Solution - Services (optional).extraction.md::E49
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 037_Lab Solution - Services (optional).txt
- Evidence: So we're gonna see, when you look at kubectl describe command for the service we're gonna see that there are four endpoints.

### Source 159: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/037_Lab Solution - Services (optional).extraction.md::E55
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 037_Lab Solution - Services (optional).txt
- Evidence: And that's when we, you look at the, the description of the service and you realize that the endpoints are zero.

### Source 160: certified-kubernetes-administrator-with-practice-tests/02_Core Concepts/043_Kubectl Explain Command.extraction.md::E10
- Source: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 043_Kubectl Explain Command.txt
- Evidence: So the API version is string and also the description of what it does.

### Source 161: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/053_Lab Solution - Manual Scheduling (optional).extraction.md::E15
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 053_Lab Solution - Manual Scheduling (optional).txt
- Evidence: So inspect the environment for various Kubernetes control plane components.

### Source 162: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/053_Lab Solution - Manual Scheduling (optional).extraction.md::E23
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 053_Lab Solution - Manual Scheduling (optional).txt
- Evidence: And we see that you have the API server, the controller manager, the proxy, the ETCD control plane, but there is no scheduler running.

### Source 163: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/053_Lab Solution - Manual Scheduling (optional).extraction.md::E44
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 053_Lab Solution - Manual Scheduling (optional).txt
- Evidence: Okay, now schedule the same pod on the control plane node.

### Source 164: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/053_Lab Solution - Manual Scheduling (optional).extraction.md::E46
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 053_Lab Solution - Manual Scheduling (optional).txt
- Evidence: If we go in and make the same change so this is just for additional practice control plane and then we are going to have to do the same thing.

### Source 165: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/053_Lab Solution - Manual Scheduling (optional).extraction.md::E67
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 053_Lab Solution - Manual Scheduling (optional).txt
- Evidence: See it's running, if you do a wide option then we'll get to see on which node it is scheduled so we can see that it's on the control plane node.

### Source 166: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/054_Labels and Selectors.extraction.md::E4
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 054_Labels and Selectors.txt
- Evidence: A user wants to be able to filter them based on different criteria, such as based on their class or kind, if they are domestic or wild, or say by their color and not just group, you want to be able to filter them based on a criteria such as all green animals or with multiple criteria such as everything green that is also a bird.

### Source 167: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/057_Taints and Tolerations.extraction.md::E74
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 057_Taints and Tolerations.txt
- Evidence: To see this taint, run a cube control, describe node command with cube master as the node name and look for the taint section.

### Source 168: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E4
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Evidence: Including the control plane?

### Source 169: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E5
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Evidence: So let's look at the number of nodes and we see that there are two nodes, control plane and node zero one.

### Source 170: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E9
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Evidence: So we do a kubectl, describe node, node zero one and we see taints right here.

### Source 171: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E40
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Evidence: So let's see, let's do describe pod in the pod name.

### Source 172: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E71
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Evidence: Now do you see any taints on control plane node?

### Source 173: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E72
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Evidence: So let's look at the control plane node and let's look at taints.

### Source 174: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E73
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Evidence: And we see that yes, there is a taint set on the control plane node and it's set to NoSchedule.

### Source 175: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E76
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Evidence: Okay, now remove the taint on control plane, which currently has the taint effect of NoSchedule.

### Source 176: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E92
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Evidence: So as you can see it's now placed on the control plane node.

### Source 177: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E93
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Evidence: So earlier at, in the beginning, the control plane node has a taint set, set on it, and then we set a taint on node zero one, and then we created the mosquito pod.

### Source 178: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E96
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Evidence: So the B pod was able to be placed on node zero one and then we removed the taint on control plane.

### Source 179: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E97
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Evidence: And without doing anything the not, the, the pod mosquito was automatically placed on control plane because it no longer has any kind of taint on it.

### Source 180: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/059_Lab Solution - Taints and Tolerations (Optional).extraction.md::E98
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 059_Lab Solution - Taints and Tolerations (Optional).txt
- Evidence: So it's, the answer to this is control plane.

### Source 181: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/061_Node Affinity.extraction.md::E14
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 061_Node Affinity.txt
- Evidence: No description needed for that.

### Source 182: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E3
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Evidence: So let's do kubectl, describe node, node 01 and let's look at the labels.

### Source 183: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E29
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Evidence: So we're gonna do a, we've gotta describe node Let's check node 01.

### Source 184: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E31
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Evidence: So there are no tense set on, node 01 and the other node which I believe is the control plane node.

### Source 185: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E62
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Evidence: So the next task is to create a new deployment named red with nginx image and two replicas and ensure it gets placed on the control plane node only.

### Source 186: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E63
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Evidence: And the recommendation is to use the label node kubernetes .io/master which is already set on the control plane node.

### Source 187: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E64
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Evidence: So if you look at the control plane node we see that there is this label, right?

### Source 188: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/063_Lab Solution - Node Affinity (Optional).extraction.md::E100
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 063_Lab Solution - Node Affinity (Optional).txt
- Evidence: And if we look at pods now, we'll see that those the new pods are on node control plane.

### Source 189: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E12
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements.txt
- Evidence: And if you look at the events using the cube control describe pod command, you will see there is an insufficient CPU.

### Source 190: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/065_Resource Requirements.extraction.md::E57
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 065_Resource Requirements.txt
- Evidence: The pod will be terminated and you will see that the pod terminated with an error in the logs or in the output of the describe command.

### Source 191: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/068_Lab Solution - Resource Limits.extraction.md::E6
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 068_Lab Solution - Resource Limits.txt
- Evidence: So, let's do a kubectl describe pod rabbit.

### Source 192: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/068_Lab Solution - Resource Limits.extraction.md::E17
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 068_Lab Solution - Resource Limits.txt
- Evidence: So, let's do a kubectl describe pod elephant.

### Source 193: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/069_DaemonSets.extraction.md::E30
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 069_DaemonSets.txt
- Evidence: Run the kube control, get daemon, set command and of course to view more details on the kube control, describe daemon sets command.

### Source 194: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/071_Lab Solution - DaemonSets (optional).extraction.md::E17
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 071_Lab Solution - DaemonSets (optional).txt
- Evidence: But let's also look at it in detail, so we go describe demo sets cube proxy.

### Source 195: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/071_Lab Solution - DaemonSets (optional).extraction.md::E25
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 071_Lab Solution - DaemonSets (optional).txt
- Evidence: So describe demo set cube flannel DS, and then the next space is cube system.

### Source 196: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/072_Static Pods.extraction.md::E2
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 072_Static Pods.txt
- Evidence: Earlier in this course, we talked about the architecture and how the Kubelet functions as one of the many control plane components in Kubernetes.

### Source 197: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/072_Static Pods.extraction.md::E60
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 072_Static Pods.txt
- Evidence: Since static pods are not dependent on the Kubernetes control plane, you can use static pods to deploy the control plane components itself as pods on a node.

### Source 198: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/072_Static Pods.extraction.md::E61
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 072_Static Pods.txt
- Evidence: Well, start by installing Kubelet on all the master nodes, then create pod definition files that uses Docker images of the various control plane components such as the API, server, controller, etcd, etc..

### Source 199: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/072_Static Pods.extraction.md::E62
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 072_Static Pods.txt
- Evidence: Place the definition files in the designated manifest folder, and the Kubelet takes care of deploying the control plane components themselves as pods on the cluster.

### Source 200: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/072_Static Pods.extraction.md::E66
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 072_Static Pods.txt
- Evidence: That's how the Kube admin tool sets up a Kubernetes cluster, which is why when you list the pods in the kube system namespace, you see the control plane components as pods in a cluster setup by the Kube admin tool.

### Source 201: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/072_Static Pods.extraction.md::E70
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 072_Static Pods.txt
- Evidence: It is handled by a daemon set controller through the kube API server, whereas static pods, as we saw in this lecture, are created directly by the Kubelet without any interference from the kube API server or rest of the Kubernetes control plane.

### Source 202: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/072_Static Pods.extraction.md::E72
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 072_Static Pods.txt
- Evidence: Static pods can be used to deploy the Kubernetes control plane components itself.

### Source 203: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/074_Lab Solution - Static Pods (Optional).extraction.md::E5
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 074_Lab Solution - Static Pods (Optional).txt
- Evidence: So this one, this one, this this is a static pod created on control plane.

### Source 204: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/074_Lab Solution - Static Pods (Optional).extraction.md::E15
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 074_Lab Solution - Static Pods (Optional).txt
- Evidence: And under this you'll see the owner of this pod is the node the kind is node, and the name is control plane.

### Source 205: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/074_Lab Solution - Static Pods (Optional).extraction.md::E26
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 074_Lab Solution - Static Pods (Optional).txt
- Evidence: So we know that there are four static pods and they're all on control plane now, as of now.

### Source 206: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/074_Lab Solution - Static Pods (Optional).extraction.md::E29
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 074_Lab Solution - Static Pods (Optional).txt
- Evidence: So if you look at this, we have the ETCD it's a control plane, ETCD is a static pod, cube PPA server is a static pod cube control manager is a static pod and cube scheduler is a static pod So not Core DNS Core DNS does not seem to be a static pod.

### Source 207: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/074_Lab Solution - Static Pods (Optional).extraction.md::E36
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 074_Lab Solution - Static Pods (Optional).txt
- Evidence: So all of these, as we just saw, are on control planes.

### Source 208: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/074_Lab Solution - Static Pods (Optional).extraction.md::E37
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 074_Lab Solution - Static Pods (Optional).txt
- Evidence: So control plane is answered to this question.

### Source 209: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/074_Lab Solution - Static Pods (Optional).extraction.md::E66
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 074_Lab Solution - Static Pods (Optional).txt
- Evidence: And let's see if pod is created Okay, so the pod is now created static busy box control plane and it's in a running state.

### Source 210: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/074_Lab Solution - Static Pods (Optional).extraction.md::E89
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 074_Lab Solution - Static Pods (Optional).txt
- Evidence: So let's look, got a node node command and we see that we have a indeed a control plane and a node zero one node.

### Source 211: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/074_Lab Solution - Static Pods (Optional).extraction.md::E91
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 074_Lab Solution - Static Pods (Optional).txt
- Evidence: So the control plane is at 10, dot 38 dot 1 oh 2 dot 6 And node zero one is at 10 dot 38, 1 oh 2 dot 8 So let's the stage to node zero one.

### Source 212: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/074_Lab Solution - Static Pods (Optional).extraction.md::E106
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 074_Lab Solution - Static Pods (Optional).txt
- Evidence: And let's exit and go back to the control plane and list, list the notes and let's watch and wait for it to be terminated.

### Source 213: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E3
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Evidence: For example, the Kubernetes control plane components itself run as pods within the cluster.

### Source 214: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E5
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Evidence: Similarly, we may have priority databases, critical applications running on the cluster as well as lower priority workloads like background jobs.

### Source 215: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E19
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Evidence: But there is a separate range that's dedicated for internal system critical parts such as the Kubernetes control plane components itself.

### Source 216: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E22
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Evidence: And as you can see it currently lists the system cluster critical and system node critical classes.

### Source 217: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E28
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Evidence: And finally we have the description.

### Source 218: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E29
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Evidence: The description is an optional field.

### Source 219: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E42
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Evidence: So say there are two workloads with two priorities coming in to be scheduled a critical app with a higher priority of seven, and a jobs app with a lower priority of five.

### Source 220: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/075_Priority Classes.extraction.md::E43
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 075_Priority Classes.txt
- Evidence: Now, since the critical app is of higher priority, it gets, uh, placed first.

### Source 221: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E26
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Evidence: This is not how you would deploy a custom scheduler 99% of the time today, because with kube ADM deployment, all the control plane components run as a pod or a deployment within the Kubernetes cluster.

### Source 222: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E91
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Evidence: So if the pod is in a the pending state, then you can look at the logs under the pod describe command.

### Source 223: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/077_Multiple Schedulers.extraction.md::E92
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 077_Multiple Schedulers.txt
- Evidence: If you've got a describe command and you'll mostly notice that the scheduler isn't configured correctly.

### Source 224: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E5
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Evidence: And we see the pod is kube scheduler-control plane.

### Source 225: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E9
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Evidence: Let's do a kubectl describe pod scheduler.

### Source 226: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/079_Lab Solution - Multiple Scheduler.extraction.md::E50
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 079_Lab Solution - Multiple Scheduler.txt
- Evidence: So do a describe.

### Source 227: certified-kubernetes-administrator-with-practice-tests/03_Scheduling/082_(2025 Updates)Admission Controllers.extraction.md::E51
- Source: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 082_(2025 Updates)Admission Controllers.txt
- Evidence: Server control plane pod using the kubectl exec command first.

### Source 228: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/089_Monitor Cluster Components.extraction.md::E19
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 089_Monitor Cluster Components.txt
- Evidence: If you're using minikube for your local cluster, run the command minikube add ons.

### Source 229: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/091_Lab Solution_ Monitor Cluster Components.extraction.md::E24
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 091_Lab Solution_ Monitor Cluster Components.txt
- Evidence: So node 01 has 57 milli cores and the control plane consumes about 470 milli cores.

### Source 230: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/091_Lab Solution_ Monitor Cluster Components.extraction.md::E26
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 091_Lab Solution_ Monitor Cluster Components.txt
- Evidence: And of course that's because the control plane has all the control plane components running on it.

### Source 231: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/091_Lab Solution_ Monitor Cluster Components.extraction.md::E27
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 091_Lab Solution_ Monitor Cluster Components.txt
- Evidence: So to answer this question the most CPU consumption is by the control plane.

### Source 232: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/091_Lab Solution_ Monitor Cluster Components.extraction.md::E30
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 091_Lab Solution_ Monitor Cluster Components.txt
- Evidence: If you look at the memory consumption here, again, we know we can see that the control plane consumes most memory.

### Source 233: certified-kubernetes-administrator-with-practice-tests/04_Logging & Monitoring/091_Lab Solution_ Monitor Cluster Components.extraction.md::E31
- Source: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 091_Lab Solution_ Monitor Cluster Components.txt
- Evidence: So answer to this is control plane again.

### Source 234: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/096_Rolling Updates and Rollbacks.extraction.md::E31
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 096_Rolling Updates and Rollbacks.txt
- Evidence: Describe deployment command to see the detailed information regarding the deployments.

### Source 235: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/098_Lab Solution_ Rolling update.extraction.md::E18
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 098_Lab Solution_ Rolling update.txt
- Evidence: Now run the script named "cold test" to send multiple requests to the web application.

### Source 236: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/098_Lab Solution_ Rolling update.extraction.md::E24
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 098_Lab Solution_ Rolling update.txt
- Evidence: So, we're gonna use this script to run tests, to kind of simulate accessing the web application by either like multiple users or sending multiple requests to the web application.

### Source 237: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/098_Lab Solution_ Rolling update.extraction.md::E60
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 098_Lab Solution_ Rolling update.txt
- Evidence: So on the described command again and we see that the image is set to v2.

### Source 238: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/100_Commands and Arguments in Docker.extraction.md::E12
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 100_Commands and Arguments in Docker.txt
- Evidence: Unlike virtual machines, containers are not meant to host an operating system.

### Source 239: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/105_Configuring ConfigMaps in Applications.extraction.md::E40
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 105_Configuring ConfigMaps in Applications.txt
- Evidence: The describe configmaps command lists the configuration data as well under the data section.

### Source 240: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/107_Lab Solution - Env Variables (Optional).extraction.md::E30
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 107_Lab Solution - Env Variables (Optional).txt
- Evidence: So we're gonna do a kubectl describe and use the short form for config map, which is cm.

### Source 241: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/108_Secrets.extraction.md::E46
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 108_Secrets.txt
- Evidence: To view more information on the newly created secret, run the Kube control describe secret command.

### Source 242: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/111_Lab Solution - Secrets (Optional).extraction.md::E7
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 111_Lab Solution - Secrets (Optional).txt
- Evidence: So, I'm going to do a kubectl describe secret.

### Source 243: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/111_Lab Solution - Secrets (Optional).extraction.md::E64
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 111_Lab Solution - Secrets (Optional).txt
- Evidence: Describe DB secret.

### Source 244: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/111_Lab Solution - Secrets (Optional).extraction.md::E65
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 111_Lab Solution - Secrets (Optional).txt
- Evidence: Describe secret.

### Source 245: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/112_Demo_ Encrypting Secret Data at Rest.extraction.md::E6
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 112_Demo_ Encrypting Secret Data at Rest.txt
- Evidence: All right, so this basically uses, it is built with the kubeadm tool and has containerd.

### Source 246: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/112_Demo_ Encrypting Secret Data at Rest.extraction.md::E14
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 112_Demo_ Encrypting Secret Data at Rest.txt
- Evidence: And if I do a describe secret, my-secret, I get to see the secret name and the data.

### Source 247: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/112_Demo_ Encrypting Secret Data at Rest.extraction.md::E43
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 112_Demo_ Encrypting Secret Data at Rest.txt
- Evidence: Or you wanna run it locally from your control plane node, you could use the etcdctl client utility.

### Source 248: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/112_Demo_ Encrypting Secret Data at Rest.extraction.md::E50
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 112_Demo_ Encrypting Secret Data at Rest.txt
- Evidence: So if you do kubectl get pods dash kube-system, I have the etcd control plane here, right?

### Source 249: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/112_Demo_ Encrypting Secret Data at Rest.extraction.md::E78
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 112_Demo_ Encrypting Secret Data at Rest.txt
- Evidence: We can also kind of verify this because this is a kubeadm setup, it uses the var /manifest etc/ kubernetes/manifests, yeah, etc/kubernetes/manifests, and here you have the kube-apiserver.

### Source 250: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/112_Demo_ Encrypting Secret Data at Rest.extraction.md::E169
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 112_Demo_ Encrypting Secret Data at Rest.txt
- Evidence: And if you wanna see the status of the kube-apiserver, since we are using containerd, so you could use the crictl command.

### Source 251: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/112_Demo_ Encrypting Secret Data at Rest.extraction.md::E170
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 112_Demo_ Encrypting Secret Data at Rest.txt
- Evidence: So you could do the crictl pods to see.

### Source 252: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/116_Multi container Pods Design Pattern.extraction.md::E41
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 116_Multi container Pods Design Pattern.txt
- Evidence: In this case, once the wait for db to start script ends, then the main container starts.

### Source 253: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/116_Multi container Pods Design Pattern.extraction.md::E45
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 116_Multi container Pods Design Pattern.txt
- Evidence: So what happens is first the checker script runs that container, runs and ends, and it ends that run.

### Source 254: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/120_Lab Solution - Init Containers (Optional).extraction.md::E8
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 120_Lab Solution - Init Containers (Optional).txt
- Evidence: So let's do a describe, You cut describe pod.

### Source 255: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/120_Lab Solution - Init Containers (Optional).extraction.md::E9
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 120_Lab Solution - Init Containers (Optional).txt
- Evidence: And if you don't specify any pod name, it's going to list the description of all the pods.

### Source 256: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/120_Lab Solution - Init Containers (Optional).extraction.md::E21
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 120_Lab Solution - Init Containers (Optional).txt
- Evidence: Now what is the image used by the Init container on the blue pod, is still describe and let's see, the Init container it has a container called Init service and the image is busy box.

### Source 257: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/120_Lab Solution - Init Containers (Optional).extraction.md::E51
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 120_Lab Solution - Init Containers (Optional).txt
- Evidence: Now this could be, you know, anything in real life, and this could be things that, you know, prepare a database or prepare some startup scripts, stuff like that.

### Source 258: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/122_(2025 Updates) Introduction to Autoscaling_.extraction.md::E40
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 122_(2025 Updates) Introduction to Autoscaling_.txt
- Evidence: So since most of the infra these days are virtual machines, you could easily provision a server with higher resources, add it to the cluster and remove the older server.

### Source 259: certified-kubernetes-administrator-with-practice-tests/05_Application Lifecycle Management/127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.extraction.md::E60
- Source: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Evidence: So we can check the recommendations with the command kubectl describe VPA followed by the name of the VPA.

### Source 260: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/133_Kubernetes Releases.extraction.md::E9
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 133_Kubernetes Releases.txt
- Evidence: Now, while minor versions are released every few months with new features and functionalities, patches are released more often with critical bug fixes.

### Source 261: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/133_Kubernetes Releases.extraction.md::E21
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 133_Kubernetes Releases.txt
- Evidence: The downloaded package, when extracted, has all the control plane components in it, all of them of the same version.

### Source 262: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/133_Kubernetes Releases.extraction.md::E22
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 133_Kubernetes Releases.txt
- Evidence: Now remember that there are other components within the control plane that do not have the same version numbers.

### Source 263: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/135_Cluster Upgrade Introduction.extraction.md::E3
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 135_Cluster Upgrade Introduction.txt
- Evidence: We will keep dependency on external components like etcd and DNS aside for now, and focus on the core control plane components.

### Source 264: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/135_Cluster Upgrade Introduction.extraction.md::E6
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 135_Cluster Upgrade Introduction.txt
- Evidence: The components can be at different release versions, since the kube API server is the primary component in the control plane, and that is the component that all other components talk to.

### Source 265: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/135_Cluster Upgrade Introduction.extraction.md::E36
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 135_Cluster Upgrade Introduction.txt
- Evidence: The control plane components such as the API, server, scheduler, and controller managers go down briefly, the master going down does not mean your worker nodes and applications on the cluster are impacted.

### Source 266: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/135_Cluster Upgrade Introduction.extraction.md::E63
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 135_Cluster Upgrade Introduction.txt
- Evidence: Kubeadm has an upgrade command that helps in upgrading clusters with Kubeadm.

### Source 267: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/135_Cluster Upgrade Introduction.extraction.md::E64
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 135_Cluster Upgrade Introduction.txt
- Evidence: Run the Kubeadm upgrade plan command and it will give you a lot of good information.

### Source 268: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/135_Cluster Upgrade Introduction.extraction.md::E66
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 135_Cluster Upgrade Introduction.txt
- Evidence: The Kubeadm tool version, the latest stable version of Kubernetes.

### Source 269: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/135_Cluster Upgrade Introduction.extraction.md::E67
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 135_Cluster Upgrade Introduction.txt
- Evidence: Then it lists all the control plane components and their versions and what version these can be upgraded to.

### Source 270: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/135_Cluster Upgrade Introduction.extraction.md::E68
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 135_Cluster Upgrade Introduction.txt
- Evidence: It also tells you that after we upgrade the control plane components, you must manually upgrade the Kubelet versions on each node.

### Source 271: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/135_Cluster Upgrade Introduction.extraction.md::E77
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 135_Cluster Upgrade Introduction.txt
- Evidence: Once complete, your control plane components are now at 1.12.

### Source 272: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/135_Cluster Upgrade Introduction.extraction.md::E82
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 135_Cluster Upgrade Introduction.txt
- Evidence: In this case, the cluster deployed with Kube ADM has Kubelets on the master node, which are used to run the control plane components as pods on the master nodes.

### Source 273: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/136_Demo - Cluster upgrade.extraction.md::E2
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 136_Demo - Cluster upgrade.txt
- Evidence: And what we're gonna do is we're gonna follow the documentation when it comes to upgrading using kubeadm.

### Source 274: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/136_Demo - Cluster upgrade.extraction.md::E3
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 136_Demo - Cluster upgrade.txt
- Evidence: And so if you go to the Kubernetes documentation and you go under Tasks, under Administer a Cluster, and then down here under Administration with kubeadm, select Upgrading a kubeadm cluster.

### Source 275: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/136_Demo - Cluster upgrade.extraction.md::E4
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 136_Demo - Cluster upgrade.txt
- Evidence: And this is gonna have all of the instructions necessary to perform an upgrade on a Kubernetes cluster using kubeadm, and it'll have separate instructions for each different upgrade.

### Source 276: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/136_Demo - Cluster upgrade.extraction.md::E11
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 136_Demo - Cluster upgrade.txt
- Evidence: So moving forward, we want to use the pkgs.k8s.io repositories to actually, you know, download the latest versions of like kubectl, kubeadm, and all of the different tools.

### Source 277: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/136_Demo - Cluster upgrade.extraction.md::E18
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 136_Demo - Cluster upgrade.txt
- Evidence: So if I do kubectl get node, we can see that I've got two nodes here, one control plane, one worker node.

### Source 278: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/136_Demo - Cluster upgrade.extraction.md::E43
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 136_Demo - Cluster upgrade.txt
- Evidence: So we're gonna copy this, we're gonna do an update, and then we'll do an apt-cache madison kubeadm.

### Source 279: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/136_Demo - Cluster upgrade.extraction.md::E44
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 136_Demo - Cluster upgrade.txt
- Evidence: So that's gonna show us what is the latest version in version 1.29 for kubeadm.

### Source 280: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/136_Demo - Cluster upgrade.extraction.md::E46
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 136_Demo - Cluster upgrade.txt
- Evidence: So I'll just do this on the control plane node.

### Source 281: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/136_Demo - Cluster upgrade.extraction.md::E50
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 136_Demo - Cluster upgrade.txt
- Evidence: So now if I go back to the documentation, we're gonna start off by upgrading the control plane nodes.

### Source 282: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/136_Demo - Cluster upgrade.extraction.md::E51
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 136_Demo - Cluster upgrade.txt
- Evidence: You always upgrade the control plane and then you upgrade the worker nodes.

### Source 283: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/136_Demo - Cluster upgrade.extraction.md::E52
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 136_Demo - Cluster upgrade.txt
- Evidence: So just pick one of your control plane nodes, doesn't really matter which one.

### Source 284: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/136_Demo - Cluster upgrade.extraction.md::E54
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 136_Demo - Cluster upgrade.txt
- Evidence: So we're gonna upgrade the kubeadm tool first.

### Source 285: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/136_Demo - Cluster upgrade.extraction.md::E57
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 136_Demo - Cluster upgrade.txt
- Evidence: So this is what we want to upgrade to, so right here, if we just change the value here to be the specific version that we want, then I can just copy this, go back to my cluster, and paste this into my control plane node.

### Source 286: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/136_Demo - Cluster upgrade.extraction.md::E58
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 136_Demo - Cluster upgrade.txt
- Evidence: So the only thing it's gonna do is it's going to upgrade the kubeadm tool.

### Source 287: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/136_Demo - Cluster upgrade.extraction.md::E59
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 136_Demo - Cluster upgrade.txt
- Evidence: So to be able to upgrade to version 1.29, we have to actually upgrade kubeadm first, so that kubeadm can then upgrade the cluster to version 1.29.

### Source 288: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/136_Demo - Cluster upgrade.extraction.md::E62
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 136_Demo - Cluster upgrade.txt
- Evidence: So if I do kubeadm version, it should show that version 1.29.

### Source 289: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/136_Demo - Cluster upgrade.extraction.md::E64
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 136_Demo - Cluster upgrade.txt
- Evidence: Now if we go back to the documentation, the next thing we want to do is run the sudo kubeadm upgrade plan.

### Source 290: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/136_Demo - Cluster upgrade.extraction.md::E67
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 136_Demo - Cluster upgrade.txt
- Evidence: So it's just kind of like a dry run just to make sure that, you know, everything looks okay and it's gonna tell us, like, hey, what are the different components that kubeadm will upgrade for us automatically, and what are the different components that we'll have to manually upgrade afterwards as well?

### Source 291: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/136_Demo - Cluster upgrade.extraction.md::E69
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 136_Demo - Cluster upgrade.txt
- Evidence: We're gonna run this once again on that same control plane node.

### Source 292: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/136_Demo - Cluster upgrade.extraction.md::E73
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 136_Demo - Cluster upgrade.txt
- Evidence: Right here, it's going to let us know that right now our kubeadm is set to version 1.29.3, cluster is set to version 1.28.0.

### Source 293: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/136_Demo - Cluster upgrade.extraction.md::E74
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 136_Demo - Cluster upgrade.txt
- Evidence: And here it says the components that have to be upgraded manually after you upgrade the control plane, which is gonna be the kubelet process.

### Source 294: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/136_Demo - Cluster upgrade.extraction.md::E76
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 136_Demo - Cluster upgrade.txt
- Evidence: So if we wanted to go to 1.28.8, we would have to upgrade the kubelet manually, kubeadm never upgrades the kubelet for us, but the components that will get upgraded by kubeadm are the following components.

### Source 295: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/136_Demo - Cluster upgrade.extraction.md::E78
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 136_Demo - Cluster upgrade.txt
- Evidence: And if we want to do that, we can always do a kubeadm upgrade apply v1.28.8, but we don't want that, we want to upgrade to 1.29.3, which is the instructions down here.

### Source 296: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/136_Demo - Cluster upgrade.extraction.md::E81
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 136_Demo - Cluster upgrade.txt
- Evidence: But kubeadm will upgrade all the other components to version 1.29.3.

### Source 297: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/136_Demo - Cluster upgrade.extraction.md::E82
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 136_Demo - Cluster upgrade.txt
- Evidence: All we have to do is just run the kubeadm upgrade apply v1.29.3 command.

### Source 298: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/136_Demo - Cluster upgrade.extraction.md::E83
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 136_Demo - Cluster upgrade.txt
- Evidence: And so if we go back to the documentation, right, we ran the plan command, the next thing we have to do is we have to run that sudo kubeadm upgrade apply command, which is exactly what we're gonna do.

### Source 299: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/136_Demo - Cluster upgrade.extraction.md::E91
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 136_Demo - Cluster upgrade.txt
- Evidence: So our kubelet, remember, based off the kubeadm plan command, it needs to be upgraded manually afterwards, after kubeadm is run.

### Source 300: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/136_Demo - Cluster upgrade.extraction.md::E95
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 136_Demo - Cluster upgrade.txt
- Evidence: So after we run the kubeadm upgrade apply, the next thing that we have to do is if we do need to upgrade the CNI provider plugin, you know, maybe after a certain version you have to upgrade the plugin so that it can operate seamlessly with the newer version, then go ahead and upgrade it at this point.

### Source 301: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/136_Demo - Cluster upgrade.extraction.md::E97
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 136_Demo - Cluster upgrade.txt
- Evidence: Then if we're running multiple control plane nodes, which in our case we only have one, but if you had more than one, then all you would have to do is you'd have to run the same commands.

### Source 302: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/136_Demo - Cluster upgrade.extraction.md::E99
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 136_Demo - Cluster upgrade.txt
- Evidence: So run those two commands, then you would want to upgrade kubeadm to that specific version.

### Source 303: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/136_Demo - Cluster upgrade.extraction.md::E100
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 136_Demo - Cluster upgrade.txt
- Evidence: And then all you have to do is instead of running a kubeadm upgrade apply, you would run a kubeadm upgrade node command on the control plane node.

### Source 304: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/136_Demo - Cluster upgrade.extraction.md::E101
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 136_Demo - Cluster upgrade.txt
- Evidence: Then once you've done that, we have now successfully upgraded all of the control plane components on the control plane nodes, or the master nodes.

### Source 305: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/136_Demo - Cluster upgrade.extraction.md::E102
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 136_Demo - Cluster upgrade.txt
- Evidence: The next thing we have to do is we have to upgrade the kubelet processes on the control plane nodes.

### Source 306: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/136_Demo - Cluster upgrade.extraction.md::E104
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 136_Demo - Cluster upgrade.txt
- Evidence: And yes, we have to drain the nodes on the control plane nodes as well because they do have pods running on them like the, you know, the core DNS pods and some of the other control plane components which are run as pods.

### Source 307: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/136_Demo - Cluster upgrade.extraction.md::E105
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 136_Demo - Cluster upgrade.txt
- Evidence: So we do want to make sure we drain them and move them to some of the other control plane components.

### Source 308: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/136_Demo - Cluster upgrade.extraction.md::E107
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 136_Demo - Cluster upgrade.txt
- Evidence: So I can just copy this, paste that in, and just change the name of the node, which is going to be controlplane as per the output of kubectl get node, which we got here, the control plane node is just called controlplane.

### Source 309: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/136_Demo - Cluster upgrade.extraction.md::E112
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 136_Demo - Cluster upgrade.txt
- Evidence: And we're gonna copy the version, that specific version, and change these two fields so that we can upgrade kubeadm, and kubectl to that specific version.

### Source 310: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/136_Demo - Cluster upgrade.extraction.md::E115
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 136_Demo - Cluster upgrade.txt
- Evidence: So now if I do a kubectl get node, we can see that the control plane node got upgraded to version 1.29.3.

### Source 311: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/136_Demo - Cluster upgrade.extraction.md::E120
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 136_Demo - Cluster upgrade.txt
- Evidence: Now if I do a get node, we should see we no longer have the scheduling disabled next to our control plane node.

### Source 312: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/136_Demo - Cluster upgrade.extraction.md::E121
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 136_Demo - Cluster upgrade.txt
- Evidence: Now if you have more than one control plane node, you would just do the same process on all the other control plane nodes.

### Source 313: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/136_Demo - Cluster upgrade.extraction.md::E122
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 136_Demo - Cluster upgrade.txt
- Evidence: So you would run this command, well first of all, you would drain the specific control plane node that you're working on at the moment, upgrade kubelet and kubectl, and then after you upgrade it, do a restart of the kubelet process.

### Source 314: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/136_Demo - Cluster upgrade.extraction.md::E123
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 136_Demo - Cluster upgrade.txt
- Evidence: And then you've upgraded the next control plane node.

### Source 315: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/136_Demo - Cluster upgrade.extraction.md::E129
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 136_Demo - Cluster upgrade.txt
- Evidence: And just like we did with the control plane node, we're gonna have to upgrade kubeadm on our worker node.

### Source 316: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/136_Demo - Cluster upgrade.extraction.md::E131
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 136_Demo - Cluster upgrade.txt
- Evidence: So that's gonna be the kubeadm one right here.

### Source 317: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/136_Demo - Cluster upgrade.extraction.md::E133
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 136_Demo - Cluster upgrade.txt
- Evidence: And then once that's done, if we take a look at the documentation, we could run a sudo kubeadm upgrade node.

### Source 318: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/136_Demo - Cluster upgrade.extraction.md::E136
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 136_Demo - Cluster upgrade.txt
- Evidence: And then if we go down here, it's gonna be very similar to the control plane node.

### Source 319: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/136_Demo - Cluster upgrade.extraction.md::E139
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 136_Demo - Cluster upgrade.txt
- Evidence: And obviously I have to go to the control plane node to actually run the command to drain it.

### Source 320: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/136_Demo - Cluster upgrade.extraction.md::E152
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 136_Demo - Cluster upgrade.txt
- Evidence: You're going to upgrade the kubeadm tool.

### Source 321: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/136_Demo - Cluster upgrade.extraction.md::E153
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 136_Demo - Cluster upgrade.txt
- Evidence: You're gonna run the sudo kubeadm upgrade node, then you'll drain the node before you update the kubelet process.

### Source 322: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/136_Demo - Cluster upgrade.extraction.md::E157
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 136_Demo - Cluster upgrade.txt
- Evidence: I just walked you guys through how to upgrade a Kubernetes cluster using the kubeadm tool.

### Source 323: certified-kubernetes-administrator-with-practice-tests/06_Cluster Maintenance/138_Backup and Restore Methods.extraction.md::E19
- Source: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 138_Backup and Restore Methods.txt
- Evidence: For example, one of the commands that can be used in a backup script is to get all pods and deployments and services in all namespaces using the kube control utilities.

### Source 324: certified-kubernetes-administrator-with-practice-tests/07_Security/149_TLS in Kubernetes - Certificate Creation.extraction.md::E44
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 149_TLS in Kubernetes - Certificate Creation.txt
- Evidence: Now the kube scheduler is a system component part of the Kubernetes control plane, so its name must be prefixed with the keyword system.

### Source 325: certified-kubernetes-administrator-with-practice-tests/07_Security/153_Lab Solution - View Certification Details.extraction.md::E87
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 153_Lab Solution - View Certification Details.txt
- Evidence: So this is not the control plane, as this, this is not the Kubernetes control plane.

### Source 326: certified-kubernetes-administrator-with-practice-tests/07_Security/153_Lab Solution - View Certification Details.extraction.md::E88
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 153_Lab Solution - View Certification Details.txt
- Evidence: This is referring to the ETCD control plane, in fact.

### Source 327: certified-kubernetes-administrator-with-practice-tests/07_Security/154_Certificates API.extraction.md::E27
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 154_Certificates API.txt
- Evidence: The Kubeadm tool does the same thing.

### Source 328: certified-kubernetes-administrator-with-practice-tests/07_Security/154_Certificates API.extraction.md::E55
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 154_Certificates API.txt
- Evidence: If you look at the Kubernetes control plane, you see the kube-apiserver, the scheduler, the controller manager, etcd server, et cetera.

### Source 329: certified-kubernetes-administrator-with-practice-tests/07_Security/157_KubeConfig.extraction.md::E4
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 157_KubeConfig.txt
- Evidence: In this case, my cluster is called Minikube playground.

### Source 330: certified-kubernetes-administrator-with-practice-tests/07_Security/157_KubeConfig.extraction.md::E63
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 157_KubeConfig.txt
- Evidence: So you've been using minikube admin user to access my Kube playground.

### Source 331: certified-kubernetes-administrator-with-practice-tests/07_Security/163_Role Based Access Controls.extraction.md::E35
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 163_Role Based Access Controls.txt
- Evidence: When the kube control describe role developer command, here you see the details about the resources and permissions for each resource.

### Source 332: certified-kubernetes-administrator-with-practice-tests/07_Security/163_Role Based Access Controls.extraction.md::E36
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 163_Role Based Access Controls.txt
- Evidence: Similarly, to view details about role bindings, run the kube control describe role bindings command.

### Source 333: certified-kubernetes-administrator-with-practice-tests/07_Security/165_Lab Solution - Role-Based Access Controls.extraction.md::E8
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 165_Lab Solution - Role-Based Access Controls.txt
- Evidence: The other way is to, we're gonna look at the processes on the control plane.

### Source 334: certified-kubernetes-administrator-with-practice-tests/07_Security/165_Lab Solution - Role-Based Access Controls.extraction.md::E10
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 165_Lab Solution - Role-Based Access Controls.txt
- Evidence: So we know that, ultimately, all containers are running as processes on the control plane.

### Source 335: certified-kubernetes-administrator-with-practice-tests/07_Security/165_Lab Solution - Role-Based Access Controls.extraction.md::E30
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 165_Lab Solution - Role-Based Access Controls.txt
- Evidence: So let's do a kube cuttle describe role kube proxy -: n kube system.

### Source 336: certified-kubernetes-administrator-with-practice-tests/07_Security/165_Lab Solution - Role-Based Access Controls.extraction.md::E51
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 165_Lab Solution - Role-Based Access Controls.txt
- Evidence: So you have kube cuttle describe role bindings kube proxy in the default, sorry, in the kube system namespace.

### Source 337: certified-kubernetes-administrator-with-practice-tests/07_Security/165_Lab Solution - Role-Based Access Controls.extraction.md::E75
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 165_Lab Solution - Role-Based Access Controls.txt
- Evidence: So let's describe the role.

### Source 338: certified-kubernetes-administrator-with-practice-tests/07_Security/165_Lab Solution - Role-Based Access Controls.extraction.md::E100
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 165_Lab Solution - Role-Based Access Controls.txt
- Evidence: Describe role developer in the blue namespace.

### Source 339: certified-kubernetes-administrator-with-practice-tests/07_Security/168_Lab Solution - Cluster Roles.extraction.md::E27
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 168_Lab Solution - Cluster Roles.txt
- Evidence: So let's describe the cluster role bindings or cluster admin.

### Source 340: certified-kubernetes-administrator-with-practice-tests/07_Security/168_Lab Solution - Cluster Roles.extraction.md::E37
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 168_Lab Solution - Cluster Roles.txt
- Evidence: Kubectl describe cluster role and cluster admin.

### Source 341: certified-kubernetes-administrator-with-practice-tests/07_Security/168_Lab Solution - Cluster Roles.extraction.md::E96
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 168_Lab Solution - Cluster Roles.txt
- Evidence: Kubectl describe cluster role storage-admin.

### Source 342: certified-kubernetes-administrator-with-practice-tests/07_Security/169_Service Accounts.extraction.md::E24
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 169_Service Accounts.txt
- Evidence: To see the details of an existing service account, run the kubectl describe service account command.

### Source 343: certified-kubernetes-administrator-with-practice-tests/07_Security/169_Service Accounts.extraction.md::E26
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 169_Service Accounts.txt
- Evidence: As you can see in the output of the describe pod command.

### Source 344: certified-kubernetes-administrator-with-practice-tests/07_Security/169_Service Accounts.extraction.md::E40
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 169_Service Accounts.txt
- Evidence: And to list the details of a create a service account, we run the kubectl describe command and it lists its details.

### Source 345: certified-kubernetes-administrator-with-practice-tests/07_Security/169_Service Accounts.extraction.md::E43
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 169_Service Accounts.txt
- Evidence: This time when we describe the pod, we see the dashboard service account associated with it.

### Source 346: certified-kubernetes-administrator-with-practice-tests/07_Security/171_Lab Solution_ Service Accounts.extraction.md::E5
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 171_Lab Solution_ Service Accounts.txt
- Evidence: So to get this information, we'll go to kubectl and we'll do a describe of the default service account.

### Source 347: certified-kubernetes-administrator-with-practice-tests/07_Security/171_Lab Solution_ Service Accounts.extraction.md::E10
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 171_Lab Solution_ Service Accounts.txt
- Evidence: So I'll do a kubectl get deployment, and then I'll do a kubectl describe deployment web-dashboard.

### Source 348: certified-kubernetes-administrator-with-practice-tests/07_Security/171_Lab Solution_ Service Accounts.extraction.md::E30
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 171_Lab Solution_ Service Accounts.txt
- Evidence: So we'll do a kubectl get pod and I'm gonna do a kubectl describe and we'll describe that pod and I forgot the word pod.

### Source 349: certified-kubernetes-administrator-with-practice-tests/07_Security/175_Pre-requisite - Security in Docker.extraction.md::E7
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 175_Pre-requisite - Security in Docker.txt
- Evidence: We have learned that unlike virtual machines, containers are not completely isolated from their host containers, and the hosts share the same kernel.

### Source 350: certified-kubernetes-administrator-with-practice-tests/07_Security/180_Developing network policies.extraction.md::E84
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 180_Developing network policies.txt
- Evidence: Traffic from sources meeting either of these criteria are allowed to pass through.

### Source 351: certified-kubernetes-administrator-with-practice-tests/07_Security/180_Developing network policies.extraction.md::E86
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 180_Developing network policies.txt
- Evidence: Part of it that would mean traffic from sources must meet both of these criteria to pass through.

### Source 352: certified-kubernetes-administrator-with-practice-tests/07_Security/182_Lab Solution - Network Policies (optional).extraction.md::E41
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 182_Lab Solution - Network Policies (optional).txt
- Evidence: So let's do a kubectl describe net poll Payroll Policy.

### Source 353: certified-kubernetes-administrator-with-practice-tests/07_Security/182_Lab Solution - Network Policies (optional).extraction.md::E144
- Source: certified-kubernetes-administrator-with-practice-tests / 07_Security / 182_Lab Solution - Network Policies (optional).txt
- Evidence: Okay, let's do a describe internal policy and we'll verify the pod selector and egress traffic configuration.

### Source 354: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E2
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface.txt
- Evidence: In the past, Kubernetes used container D alone as the container runtime engine, and all the code to work with container D was embedded within the Kubernetes source code, with other container runtimes coming in, such as rocket and Cri-o.

### Source 355: certified-kubernetes-administrator-with-practice-tests/08_Storage/192_Container Storage Interface.extraction.md::E6
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 192_Container Storage Interface.txt
- Evidence: So in the future, if any new container runtime interface is developed, they can simply follow the CRI standards, and that new container runtime would work with Kubernetes without really having to work with Kubernetes team of developers, or touch the Kubernetes source code.

### Source 356: certified-kubernetes-administrator-with-practice-tests/08_Storage/195_Persistent Volume Claims.extraction.md::E10
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 195_Persistent Volume Claims.txt
- Evidence: Finally, note that a smaller claim may get bound to a larger volume if all the other criteria matches and there are no better options.

### Source 357: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E12
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Evidence: So should I describe pod web app?

### Source 358: certified-kubernetes-administrator-with-practice-tests/08_Storage/198_Lab Solution - Persistent Volumes and Persistent Volume Claims.extraction.md::E170
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 198_Lab Solution - Persistent Volumes and Persistent Volume Claims.txt
- Evidence: Let's do a describe and ... yeah, so you see it's stuck in a terminating state for the last 30 seconds or so.

### Source 359: certified-kubernetes-administrator-with-practice-tests/08_Storage/203_Lab Solution - Storage Class.extraction.md::E61
- Source: certified-kubernetes-administrator-with-practice-tests / 08_Storage / 203_Lab Solution - Storage Class.txt
- Evidence: So let's do a queue code: describe PVC local PVC.

### Source 360: certified-kubernetes-administrator-with-practice-tests/09_Networking/206_Prerequisite DNS.extraction.md::E156
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 206_Prerequisite DNS.txt
- Evidence: Well, thank you so much for watching, and don't forget to subscribe to my channel for more videos like this.

### Source 361: certified-kubernetes-administrator-with-practice-tests/09_Networking/211_Prerequisite CNI.extraction.md::E14
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 211_Prerequisite CNI.txt
- Evidence: So we created a program or script that performs all the required tasks to get the container attached to a bridge network.

### Source 362: certified-kubernetes-administrator-with-practice-tests/09_Networking/212_Cluster Networking.extraction.md::E8
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 212_Cluster Networking.txt
- Evidence: These are used by the various components in the control plane.

### Source 363: certified-kubernetes-administrator-with-practice-tests/09_Networking/212_Cluster Networking.extraction.md::E12
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 212_Cluster Networking.txt
- Evidence: External users and all other control plane components.

### Source 364: certified-kubernetes-administrator-with-practice-tests/09_Networking/215_Lab Solution - Explore Environment (optional).extraction.md::E42
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 215_Lab Solution - Explore Environment (optional).txt
- Evidence: The next question is asking us, we use the Containerd as our container runtime.

### Source 365: certified-kubernetes-administrator-with-practice-tests/09_Networking/215_Lab Solution - Explore Environment (optional).extraction.md::E45
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 215_Lab Solution - Explore Environment (optional).txt
- Evidence: And we wanna look for the bridge/interface that the Containerd is gonna be using, so that's going to be the cni0.

### Source 366: certified-kubernetes-administrator-with-practice-tests/09_Networking/215_Lab Solution - Explore Environment (optional).extraction.md::E47
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 215_Lab Solution - Explore Environment (optional).txt
- Evidence: So this is gonna show you, you know, based off a certain criteria what interfaces you're interested in and you type in type and bridge.

### Source 367: certified-kubernetes-administrator-with-practice-tests/09_Networking/215_Lab Solution - Explore Environment (optional).extraction.md::E97
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 215_Lab Solution - Explore Environment (optional).txt
- Evidence: And we could see that this is just saying that the reason for this is because 2379 is the port of ETCD to which all control plane components connect to.

### Source 368: certified-kubernetes-administrator-with-practice-tests/09_Networking/215_Lab Solution - Explore Environment (optional).extraction.md::E99
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 215_Lab Solution - Explore Environment (optional).txt
- Evidence: And so that's only used when you have multiple control plane nodes, which in this case we don't.

### Source 369: certified-kubernetes-administrator-with-practice-tests/09_Networking/216_Pod Networking.extraction.md::E4
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 216_Pod Networking.txt
- Evidence: We also make sure the firewall and network security groups are configured correctly to allow for the Kubernetes control plane components to reach each other.

### Source 370: certified-kubernetes-administrator-with-practice-tests/09_Networking/216_Pod Networking.extraction.md::E5
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 216_Pod Networking.txt
- Evidence: Assume that we have also set up all the Kubernetes control plane components, such as the cube API server, the etcd servers, kubelets, etc. and we are finally ready to deploy our applications.

### Source 371: certified-kubernetes-administrator-with-practice-tests/09_Networking/216_Pod Networking.extraction.md::E45
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 216_Pod Networking.txt
- Evidence: So we write a script for it.

### Source 372: certified-kubernetes-administrator-with-practice-tests/09_Networking/216_Pod Networking.extraction.md::E46
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 216_Pod Networking.txt
- Evidence: Now, you don't have to know any kind of complicated scripting.

### Source 373: certified-kubernetes-administrator-with-practice-tests/09_Networking/216_Pod Networking.extraction.md::E60
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 216_Pod Networking.txt
- Evidence: We then run the same script, this time for the second container with its information, and gets the container connected to the network.

### Source 374: certified-kubernetes-administrator-with-practice-tests/09_Networking/216_Pod Networking.extraction.md::E62
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 216_Pod Networking.txt
- Evidence: We copy the script to the other nodes and run the script on them to assign IP address and connect those containers to their own internal networks.

### Source 375: certified-kubernetes-administrator-with-practice-tests/09_Networking/216_Pod Networking.extraction.md::E80
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 216_Pod Networking.txt
- Evidence: We then wrote a script that can be run for each container that performs the necessary steps required to connect each container to the network.

### Source 376: certified-kubernetes-administrator-with-practice-tests/09_Networking/216_Pod Networking.extraction.md::E81
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 216_Pod Networking.txt
- Evidence: And we executed the script manually.

### Source 377: certified-kubernetes-administrator-with-practice-tests/09_Networking/216_Pod Networking.extraction.md::E83
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 216_Pod Networking.txt
- Evidence: So how do we run this script automatically when a pod is created on Kubernetes?

### Source 378: certified-kubernetes-administrator-with-practice-tests/09_Networking/216_Pod Networking.extraction.md::E86
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 216_Pod Networking.txt
- Evidence: CNI tells Kubernetes that this is how you should call a script as soon as you create a container, and CNI tells us this is how your script should look like.

### Source 379: certified-kubernetes-administrator-with-practice-tests/09_Networking/216_Pod Networking.extraction.md::E87
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 216_Pod Networking.txt
- Evidence: So we need to modify the script a little bit to meet CNI standards.

### Source 380: certified-kubernetes-administrator-with-practice-tests/09_Networking/216_Pod Networking.extraction.md::E89
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 216_Pod Networking.txt
- Evidence: So our script is ready.

### Source 381: certified-kubernetes-administrator-with-practice-tests/09_Networking/216_Pod Networking.extraction.md::E91
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 216_Pod Networking.txt
- Evidence: Whenever a container is created, the container runtime looks at the CNI configuration passed as a command line argument when it was run, and identifies our scripts name.

### Source 382: certified-kubernetes-administrator-with-practice-tests/09_Networking/216_Pod Networking.extraction.md::E92
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 216_Pod Networking.txt
- Evidence: It then looks in the CNI bin directory to find our script, and then executes the script with the add command and the name and namespace ID of the container, and then our script takes care of the rest.

### Source 383: certified-kubernetes-administrator-with-practice-tests/09_Networking/217_CNI in kubernetes.extraction.md::E11
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 217_CNI in kubernetes.txt
- Evidence: The two good examples are Containerd and Cri-o.

### Source 384: certified-kubernetes-administrator-with-practice-tests/09_Networking/219_CNI weave.extraction.md::E5
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 219_CNI weave.txt
- Evidence: We will start where we left off in the pod networking concepts section, we had our own custom CNI script that we've built and integrated into Kubelet through CNI.

### Source 385: certified-kubernetes-administrator-with-practice-tests/09_Networking/219_CNI weave.extraction.md::E6
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 219_CNI weave.txt
- Evidence: In the previous lecture, we saw how instead of our own custom script, we integrated the Weave plugin.

### Source 386: certified-kubernetes-administrator-with-practice-tests/09_Networking/219_CNI weave.extraction.md::E45
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 219_CNI weave.txt
- Evidence: Once the base Kubernetes system is ready, with nodes and networking configured correctly between the nodes and the basic control plane components are deployed, Weave can be deployed in the cluster with a single kubectl apply command.

### Source 387: certified-kubernetes-administrator-with-practice-tests/09_Networking/219_CNI weave.extraction.md::E50
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 219_CNI weave.txt
- Evidence: If you deployed your cluster with a Kubeadm tool and Weave plugin, you can see the Weave peers as pods deployed on each node.

### Source 388: certified-kubernetes-administrator-with-practice-tests/09_Networking/221_Lab Solution - Explore CNI (optional).extraction.md::E5
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 221_Lab Solution - Explore CNI (optional).txt
- Evidence: And we can see the --container-runtime-endpoint flag is set to unix:///var/run/containerd/containerd.sock.

### Source 389: certified-kubernetes-administrator-with-practice-tests/09_Networking/222_ipam weave.extraction.md::E17
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 222_ipam weave.txt
- Evidence: An easy way to do it is to store the list of IPS in a file, and make sure we have necessary code in our script to manage this file properly.

### Source 390: certified-kubernetes-administrator-with-practice-tests/09_Networking/222_ipam weave.extraction.md::E19
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 222_ipam weave.txt
- Evidence: Instead of coding that ourselves in our script, CNI comes with two built in plugins to which you can outsource this task to.

### Source 391: certified-kubernetes-administrator-with-practice-tests/09_Networking/222_ipam weave.extraction.md::E20
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 222_ipam weave.txt
- Evidence: In this case, the plugin that implements the approach that we followed for managing the IP addresses locally on each host is the host local plugin, but it is still our responsibility to invoke that plugin in our script.

### Source 392: certified-kubernetes-administrator-with-practice-tests/09_Networking/222_ipam weave.extraction.md::E21
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 222_ipam weave.txt
- Evidence: Or we can make our script dynamic to support different kinds of plugins.

### Source 393: certified-kubernetes-administrator-with-practice-tests/09_Networking/222_ipam weave.extraction.md::E23
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 222_ipam weave.txt
- Evidence: These details can be read from our script to invoke the appropriate plugin, instead of hard coding it to use host local every time.

### Source 394: certified-kubernetes-administrator-with-practice-tests/09_Networking/226_Lab Solution - Service Networking (optional).extraction.md::E5
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 226_Lab Solution - Service Networking (optional).txt
- Evidence: So, I'm on the control plane, so 192.16.10.10.

### Source 395: certified-kubernetes-administrator-with-practice-tests/09_Networking/230_Lab Solution - Explore DNS (optional).extraction.md::E25
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 230_Lab Solution - Explore DNS (optional).txt
- Evidence: So let's take a closer look at those pods to a describe pod in the kube system namespace.

### Source 396: certified-kubernetes-administrator-with-practice-tests/09_Networking/230_Lab Solution - Explore DNS (optional).extraction.md::E65
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 230_Lab Solution - Explore DNS (optional).txt
- Evidence: So let's do a describe, describe config map in the kube system namespace.

### Source 397: certified-kubernetes-administrator-with-practice-tests/09_Networking/230_Lab Solution - Explore DNS (optional).extraction.md::E90
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 230_Lab Solution - Explore DNS (optional).txt
- Evidence: So let's do a describe on the webservice.

### Source 398: certified-kubernetes-administrator-with-practice-tests/09_Networking/230_Lab Solution - Explore DNS (optional).extraction.md::E125
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 230_Lab Solution - Explore DNS (optional).txt
- Evidence: So let's do a kubectl describe, svc, webservice.

### Source 399: certified-kubernetes-administrator-with-practice-tests/09_Networking/230_Lab Solution - Explore DNS (optional).extraction.md::E177
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 230_Lab Solution - Explore DNS (optional).txt
- Evidence: So let's do a kubectl describe deployment web app.

### Source 400: certified-kubernetes-administrator-with-practice-tests/09_Networking/231_Ingress.extraction.md::E165
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 231_Ingress.txt
- Evidence: Once created, view additional details about the ingress resource by running the kubectl describe ingress command.

### Source 401: certified-kubernetes-administrator-with-practice-tests/09_Networking/235_Lab Solution - Ingress Networking 1 - (optional).extraction.md::E59
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Evidence: So let's just replace describe with edit.

### Source 402: certified-kubernetes-administrator-with-practice-tests/09_Networking/235_Lab Solution - Ingress Networking 1 - (optional).extraction.md::E98
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Evidence: Now a new payment service has been introduced since it is critical, the new application is deployed in its own name space.

### Source 403: certified-kubernetes-administrator-with-practice-tests/09_Networking/235_Lab Solution - Ingress Networking 1 - (optional).extraction.md::E101
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Evidence: So we have something, we have a new name space called critical space.

### Source 404: certified-kubernetes-administrator-with-practice-tests/09_Networking/235_Lab Solution - Ingress Networking 1 - (optional).extraction.md::E102
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Evidence: So let's do a get deploy in the critical space.

### Source 405: certified-kubernetes-administrator-with-practice-tests/09_Networking/235_Lab Solution - Ingress Networking 1 - (optional).extraction.md::E105
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Evidence: So identify the name space, so that's critical space.

### Source 406: certified-kubernetes-administrator-with-practice-tests/09_Networking/235_Lab Solution - Ingress Networking 1 - (optional).extraction.md::E114
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Evidence: So what we're going to do is we're gonna create an ingress resource for this critical space itself.

### Source 407: certified-kubernetes-administrator-with-practice-tests/09_Networking/235_Lab Solution - Ingress Networking 1 - (optional).extraction.md::E136
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Evidence: Remember that this is all has to be in the critical space.

### Source 408: certified-kubernetes-administrator-with-practice-tests/09_Networking/235_Lab Solution - Ingress Networking 1 - (optional).extraction.md::E141
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Evidence: And so let's check it out git.ingress in the critical space, and we see that is indeed created.

### Source 409: certified-kubernetes-administrator-with-practice-tests/09_Networking/235_Lab Solution - Ingress Networking 1 - (optional).extraction.md::E142
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Evidence: Let's take a look at it, ingress in critical space.

### Source 410: certified-kubernetes-administrator-with-practice-tests/09_Networking/235_Lab Solution - Ingress Networking 1 - (optional).extraction.md::E147
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Evidence: So if you look at the logs of this application in the critical space, we have the web pay service, so the web app pay pod, then what we're going to do is we're gonna do a logs for that pod in the critical space.

### Source 411: certified-kubernetes-administrator-with-practice-tests/09_Networking/237_Lab Solution - Ingress Networking - 2 (optional).extraction.md::E131
- Source: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 237_Lab Solution - Ingress Networking - 2 (optional).txt
- Evidence: Let's do a describe ingress.

### Source 412: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/241_Design a Kubernetes Cluster.extraction.md::E6
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 241_Design a Kubernetes Cluster.txt
- Evidence: Do you prefer your platform to be managed by a cloud provider or a self-hosted?

### Source 413: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/241_Design a Kubernetes Cluster.extraction.md::E16
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 241_Design a Kubernetes Cluster.txt
- Evidence: If you want to deploy a cluster for learning purposes, then a solution based on minikube or a single node cluster deployed using kube ADM on local VMs or cloud providers like GCP or AWS should do.

### Source 414: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/241_Design a Kubernetes Cluster.extraction.md::E19
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 241_Design a Kubernetes Cluster.txt
- Evidence: Kubeadm is an appropriate tool.

### Source 415: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/241_Design a Kubernetes Cluster.extraction.md::E44
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 241_Design a Kubernetes Cluster.txt
- Evidence: In our case, we will be deploying virtual machines on VirtualBox environments as nodes of our cluster.

### Source 416: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/241_Design a Kubernetes Cluster.extraction.md::E45
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 241_Design a Kubernetes Cluster.txt
- Evidence: You may choose to deploy on physical machines or virtual machines, or cloud environments like GCP, AWS, Azure, or any other platform of your choice.

### Source 417: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/241_Design a Kubernetes Cluster.extraction.md::E47
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 241_Design a Kubernetes Cluster.txt
- Evidence: Now we know that master nodes are for hosting control plane components like the cube API server, etcd server and others, while worker nodes are for hosting workloads.

### Source 418: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/241_Design a Kubernetes Cluster.extraction.md::E50
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 241_Design a Kubernetes Cluster.txt
- Evidence: As a best practice, it is recommended to dedicate master nodes for control plane components only, especially in a production environment.

### Source 419: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/241_Design a Kubernetes Cluster.extraction.md::E53
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 241_Design a Kubernetes Cluster.txt
- Evidence: Another thing to note is that typically you have all the control plane components on the master nodes.

### Source 420: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/242_Choosing Kubernetes Infrastructure.extraction.md::E15
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 242_Choosing Kubernetes Infrastructure.txt
- Evidence: So what are some of the solutions available to easily get started with Kubernetes on a local machine, minikube deploys a single node cluster easily.

### Source 421: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/242_Choosing Kubernetes Infrastructure.extraction.md::E16
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 242_Choosing Kubernetes Infrastructure.txt
- Evidence: It relies on one of the virtualization software, like Oracle VirtualBox, to create virtual machines that run the Kubernetes cluster components.

### Source 422: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/242_Choosing Kubernetes Infrastructure.extraction.md::E26
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 242_Choosing Kubernetes Infrastructure.txt
- Evidence: Turnkey solutions are where you provision the required VMs and use some kind of tools or scripts to configure Kubernetes cluster on them.

### Source 423: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/242_Choosing Kubernetes Infrastructure.extraction.md::E27
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 242_Choosing Kubernetes Infrastructure.txt
- Evidence: At the end of the day, you are responsible for maintaining those VMs and patching them and upgrading them, etc. but cluster management and maintenance are mostly made easy using these tools and scripts.

### Source 424: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/242_Choosing Kubernetes Infrastructure.extraction.md::E40
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 242_Choosing Kubernetes Infrastructure.txt
- Evidence: Vagrant provides a set of useful scripts to deploy a Kubernetes cluster on different cloud service providers.

### Source 425: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/242_Choosing Kubernetes Infrastructure.extraction.md::E42
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 242_Choosing Kubernetes Infrastructure.txt
- Evidence: You must have a few virtual machines with supported configurations in place.

### Source 426: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/242_Choosing Kubernetes Infrastructure.extraction.md::E53
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 242_Choosing Kubernetes Infrastructure.txt
- Evidence: In our case, since this is for learning purposes, and considering the fact that some of you may not have access to a public cloud account, and since most of you mentioned in the poll we sent out that you prefer a local setup with VirtualBox, we chose to deploy a local Kubernetes cluster from scratch on our local system by creating several virtual machines on VirtualBox.

### Source 427: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/242_Choosing Kubernetes Infrastructure.extraction.md::E54
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 242_Choosing Kubernetes Infrastructure.txt
- Evidence: So our design now has three nodes one master, two worker to be deployed on a laptop with virtual machines provisioned on VirtualBox.

### Source 428: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/243_Configure High Availability.extraction.md::E13
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 243_Configure High Availability.txt
- Evidence: The control plane components.

### Source 429: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/243_Configure High Availability.extraction.md::E15
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 243_Configure High Availability.txt
- Evidence: So our focus in this lecture is going to be on the master and control plane components.

### Source 430: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/243_Configure High Availability.extraction.md::E19
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 243_Configure High Availability.txt
- Evidence: As we learned already, the master node hosts the control plane components, including the API controller, manager, scheduler and etcd server in a setup with an additional master node.

### Source 431: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/243_Configure High Availability.extraction.md::E66
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 243_Configure High Availability.txt
- Evidence: It's called as a stacked control plane nodes topology.

### Source 432: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/243_Configure High Availability.extraction.md::E68
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 243_Configure High Availability.txt
- Evidence: But if one node goes down, both an etcd member and the control plane instances are lost and redundancy is compromised.

### Source 433: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/243_Configure High Availability.extraction.md::E69
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 243_Configure High Availability.txt
- Evidence: The other is where etcd is separated from the control plane nodes and run on its own set of servers.

### Source 434: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/243_Configure High Availability.extraction.md::E71
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 243_Configure High Availability.txt
- Evidence: This is less risky, as a failed control plane node does not impact the etcd cluster and the data it stores.

### Source 435: certified-kubernetes-administrator-with-practice-tests/10_Design and Install a Kubernetes Cluster/244_ETCD in HA.extraction.md::E23
- Source: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 244_ETCD in HA.txt
- Evidence: We had etcd on a single server but it's a database and maybe storing critical data.

### Source 436: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/246_Deployment With kubeadm - Introduction.extraction.md::E1
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 246_Deployment With kubeadm - Introduction.txt
- Evidence: In this lecture, we will look at the cube admin tool, which can be used to bootstrap a Kubernetes cluster.

### Source 437: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/246_Deployment With kubeadm - Introduction.extraction.md::E2
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 246_Deployment With kubeadm - Introduction.txt
- Evidence: The cube admin tool helps us set up a multi-node cluster following the Kubernetes best practices.

### Source 438: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/246_Deployment With kubeadm - Introduction.extraction.md::E3
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 246_Deployment With kubeadm - Introduction.txt
- Evidence: As we discussed, the Kubernetes cluster consists of various components such as the cube API server, etcd controllers, etc. and we have seen some of the requirements around security and certificates to enable communication between these components.

### Source 439: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/246_Deployment With kubeadm - Introduction.extraction.md::E4
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 246_Deployment With kubeadm - Introduction.txt
- Evidence: Installing all of these various components individually on different nodes, and modifying the configuration files to make sure these components point to each other, and setting up certificates to make it work is a tedious task.

### Source 440: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/246_Deployment With kubeadm - Introduction.extraction.md::E5
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 246_Deployment With kubeadm - Introduction.txt
- Evidence: The cube admin tool helps us by taking care of all of those tasks.

### Source 441: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/246_Deployment With kubeadm - Introduction.extraction.md::E6
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 246_Deployment With kubeadm - Introduction.txt
- Evidence: Let's go through the steps to set up a Kubernetes cluster using the cube admin tool at a high level.

### Source 442: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/246_Deployment With kubeadm - Introduction.extraction.md::E7
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 246_Deployment With kubeadm - Introduction.txt
- Evidence: First, you must have multiple systems or virtual machines provisioned for configuring a cluster.

### Source 443: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/246_Deployment With kubeadm - Introduction.extraction.md::E8
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 246_Deployment With kubeadm - Introduction.txt
- Evidence: We will see how to set up your laptop to do just that.

### Source 444: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/246_Deployment With kubeadm - Introduction.extraction.md::E9
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 246_Deployment With kubeadm - Introduction.txt
- Evidence: That's if you're not familiar with it.

### Source 445: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/246_Deployment With kubeadm - Introduction.extraction.md::E10
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 246_Deployment With kubeadm - Introduction.txt
- Evidence: Once the systems are created, designate one node as master and others as worker nodes.

### Source 446: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/246_Deployment With kubeadm - Introduction.extraction.md::E11
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 246_Deployment With kubeadm - Introduction.txt
- Evidence: The next step is to install a container runtime on the hosts.

### Source 447: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/246_Deployment With kubeadm - Introduction.extraction.md::E12
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 246_Deployment With kubeadm - Introduction.txt
- Evidence: We will be using container D, so we must install container D on all the nodes.

### Source 448: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/246_Deployment With kubeadm - Introduction.extraction.md::E13
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 246_Deployment With kubeadm - Introduction.txt
- Evidence: The next step is to install kube admin tool on all the nodes.

### Source 449: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/246_Deployment With kubeadm - Introduction.extraction.md::E14
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 246_Deployment With kubeadm - Introduction.txt
- Evidence: The kube admin tool helps us bootstrap the Kubernetes solution by installing and configuring all the required components in the right nodes in the right order.

### Source 450: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/246_Deployment With kubeadm - Introduction.extraction.md::E15
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 246_Deployment With kubeadm - Introduction.txt
- Evidence: The next step is to initialize the master server.

### Source 451: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/246_Deployment With kubeadm - Introduction.extraction.md::E16
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 246_Deployment With kubeadm - Introduction.txt
- Evidence: During this process, all the required components are installed and configured on the master server.

### Source 452: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/246_Deployment With kubeadm - Introduction.extraction.md::E17
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 246_Deployment With kubeadm - Introduction.txt
- Evidence: Once the master is initialized and before joining the worker nodes to the master, you must ensure that the network prerequisites are met.

### Source 453: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/246_Deployment With kubeadm - Introduction.extraction.md::E18
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 246_Deployment With kubeadm - Introduction.txt
- Evidence: A normal network connectivity between the systems is not sufficient for this.

### Source 454: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/246_Deployment With kubeadm - Introduction.extraction.md::E19
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 246_Deployment With kubeadm - Introduction.txt
- Evidence: Kubernetes requires a special networking solution between the master and worker nodes, which is called as the pod network.

### Source 455: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/246_Deployment With kubeadm - Introduction.extraction.md::E20
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 246_Deployment With kubeadm - Introduction.txt
- Evidence: The last step is to join the worker nodes to the master node, where then all set to launch our application in the Kubernetes environment.

### Source 456: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/246_Deployment With kubeadm - Introduction.extraction.md::E21
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 246_Deployment With kubeadm - Introduction.txt
- Evidence: We will now see a demo of setting up Kubernetes using the Kube admin tool in our local environment.

### Source 457: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/248_Deployment With Kubeadm - Provision VMs With Vagrant.extraction.md::E1
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Evidence: Instructor: In this demo, we will see how to provision VMs for our Kubernetes cluster that will include a single master node and two worker nodes.

### Source 458: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/248_Deployment With Kubeadm - Provision VMs With Vagrant.extraction.md::E2
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Evidence: And we're gonna accomplish this by using two different pieces of software.

### Source 459: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/248_Deployment With Kubeadm - Provision VMs With Vagrant.extraction.md::E3
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Evidence: The first one is going to be VirtualBox. so this is our hypervisor which is ultimately responsible for running our virtual machines.

### Source 460: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/248_Deployment With Kubeadm - Provision VMs With Vagrant.extraction.md::E4
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Evidence: And the other tool is going to be Vagrant, so this is like a automation tool that makes it really easy to spin up a whole bunch of VMs with a specific configuration.

### Source 461: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/248_Deployment With Kubeadm - Provision VMs With Vagrant.extraction.md::E5
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Evidence: So we're gonna make use of Vagrant so that all of us can kind of follow along with the exact same configuration for our VMs and we can get those VMs up and running with just one single command.

### Source 462: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/248_Deployment With Kubeadm - Provision VMs With Vagrant.extraction.md::E6
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Evidence: So the prerequisites, obviously, for this video is you have to install VirtualBox and you have to install Vagrant.

### Source 463: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/248_Deployment With Kubeadm - Provision VMs With Vagrant.extraction.md::E7
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Evidence: So if you take a look at VirtualBox, you could just go to the virtualbox.org and there's going to be a downloads page, and you could just select the specific operating system you're using, and then you could just follow the steps.

### Source 464: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/248_Deployment With Kubeadm - Provision VMs With Vagrant.extraction.md::E8
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Evidence: Pretty simple.

### Source 465: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/248_Deployment With Kubeadm - Provision VMs With Vagrant.extraction.md::E9
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Evidence: And then Vagrant, if you go to the Vagrant documentation, they have a walkthrough on how to install Vagrant as well.

### Source 466: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/248_Deployment With Kubeadm - Provision VMs With Vagrant.extraction.md::E10
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Evidence: Couple of different ways to do that depending on what your operating system is, just use whichever is most convenient for you.

### Source 467: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/248_Deployment With Kubeadm - Provision VMs With Vagrant.extraction.md::E11
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Evidence: Now for Vagrant, we have a Vagrant file which is going to contain all of our configurations for our VMs.

### Source 468: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/248_Deployment With Kubeadm - Provision VMs With Vagrant.extraction.md::E12
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Evidence: And this file has already been written out for all of you guys and you can find that at the repository for the course.

### Source 469: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/248_Deployment With Kubeadm - Provision VMs With Vagrant.extraction.md::E13
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Evidence: So, go ahead and just clone this repository so that you can have access to the Vagrant file and you can use that to spin up the VMs.

### Source 470: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/248_Deployment With Kubeadm - Provision VMs With Vagrant.extraction.md::E14
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Evidence: And to clone the repository, all we have to do is go to this code dropdown right here and just copy the URL of this specific repository.

### Source 471: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/248_Deployment With Kubeadm - Provision VMs With Vagrant.extraction.md::E15
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Evidence: Then once you do that, go to your Terminal and run a git clone, and then pass in the URL, and that's going to clone the repository.

### Source 472: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/248_Deployment With Kubeadm - Provision VMs With Vagrant.extraction.md::E16
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Evidence: All right, so I cleared out the Terminal but after we cloned the repository, it's going to create a folder with all of those files.

### Source 473: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/248_Deployment With Kubeadm - Provision VMs With Vagrant.extraction.md::E17
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Evidence: And so, I'm going to cd into that folder.

### Source 474: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/248_Deployment With Kubeadm - Provision VMs With Vagrant.extraction.md::E18
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Evidence: And within here, if I just do an ls, you should see the Vagrant file right here.

### Source 475: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/248_Deployment With Kubeadm - Provision VMs With Vagrant.extraction.md::E19
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Evidence: So let's open up the Vagrant file and let's take a look at the configuration.

### Source 476: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/248_Deployment With Kubeadm - Provision VMs With Vagrant.extraction.md::E20
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Evidence: All right, and so, in the configuration, you could see here we've set it up to have one master node and two worker nodes.

### Source 477: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/248_Deployment With Kubeadm - Provision VMs With Vagrant.extraction.md::E21
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Evidence: The IP address is for the host, so this has nothing to do with Kubernetes yet.

### Source 478: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/248_Deployment With Kubeadm - Provision VMs With Vagrant.extraction.md::E22
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Evidence: The IP addresses of the actual VMs or the nodes, they're going to make use of the 192.168.56 network.

### Source 479: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/248_Deployment With Kubeadm - Provision VMs With Vagrant.extraction.md::E23
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Evidence: And if you'd like to, you can go ahead and poke around at the rest of the configuration but we don't need to worry too much about that.

### Source 480: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/248_Deployment With Kubeadm - Provision VMs With Vagrant.extraction.md::E24
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Evidence: The great part about Vagrant is we could just run one command and get all of our VMs up with the same exact configuration.

### Source 481: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/248_Deployment With Kubeadm - Provision VMs With Vagrant.extraction.md::E25
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Evidence: So I'm gonna close this out and I'm going to run a vagrant status.

### Source 482: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/248_Deployment With Kubeadm - Provision VMs With Vagrant.extraction.md::E26
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Evidence: And so, what this is gonna do is it's gonna check the status of the VMs.

### Source 483: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/248_Deployment With Kubeadm - Provision VMs With Vagrant.extraction.md::E27
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Evidence: And for these statuses for the VMs, we can see that they're all set to not created.

### Source 484: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/248_Deployment With Kubeadm - Provision VMs With Vagrant.extraction.md::E28
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Evidence: And so, you could see that we've got the three different VMs here, kubemaster, which is going to be our master node, and then the two worker nodes.

### Source 485: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/248_Deployment With Kubeadm - Provision VMs With Vagrant.extraction.md::E29
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Evidence: And they're all in a not created state because we actually haven't brought up the VMs.

### Source 486: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/248_Deployment With Kubeadm - Provision VMs With Vagrant.extraction.md::E30
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Evidence: So let's go ahead and do that now and we can do that with a vagrant up.

### Source 487: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/248_Deployment With Kubeadm - Provision VMs With Vagrant.extraction.md::E31
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Evidence: And this is going to provision all three of those VMs with the exact specifications from the Vagrant file.

### Source 488: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/248_Deployment With Kubeadm - Provision VMs With Vagrant.extraction.md::E32
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Evidence: And so, what it's going to do is it's actually going to pull the Ubuntu Bionic 64 base image.

### Source 489: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/248_Deployment With Kubeadm - Provision VMs With Vagrant.extraction.md::E33
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Evidence: And then once that image is pulled, it's able to then provision all of the different VMs.

### Source 490: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/248_Deployment With Kubeadm - Provision VMs With Vagrant.extraction.md::E34
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Evidence: This part is going to take a decent amount of time to get all of those VMs up and running, so we're just gonna have to sit there and wait.

### Source 491: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/248_Deployment With Kubeadm - Provision VMs With Vagrant.extraction.md::E35
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Evidence: Just understand that it's not a big deal if it takes a long time, it's kind of expected.

### Source 492: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/248_Deployment With Kubeadm - Provision VMs With Vagrant.extraction.md::E36
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Evidence: Okay, so now that it's complete, if you just take a look at the logs, you can see it actually goes step by step and provision the different VMs.

### Source 493: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/248_Deployment With Kubeadm - Provision VMs With Vagrant.extraction.md::E37
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Evidence: So it first started provisioning the kubemaster, after it provisioned that, it then moved down to the kubenode01, which is the first worker node, and then it wrapped up by provisioning the kubenode02.

### Source 494: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/248_Deployment With Kubeadm - Provision VMs With Vagrant.extraction.md::E38
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Evidence: So we've got all three VMs provisioned.

### Source 495: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/248_Deployment With Kubeadm - Provision VMs With Vagrant.extraction.md::E39
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Evidence: And now if I do a vagrant status, we could take a look at the status of the VMs now that they're provisioned.

### Source 496: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/248_Deployment With Kubeadm - Provision VMs With Vagrant.extraction.md::E40
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Evidence: And we can see that all three nodes are in a running state, which is exactly what we want.

### Source 497: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/248_Deployment With Kubeadm - Provision VMs With Vagrant.extraction.md::E41
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Evidence: So now that we've got the three nodes in a running state, how do we connect to it?

### Source 498: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/248_Deployment With Kubeadm - Provision VMs With Vagrant.extraction.md::E42
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Evidence: Well, we do this by running the command vagrant ssh and then the name of the specific node we want to connect to.

### Source 499: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/248_Deployment With Kubeadm - Provision VMs With Vagrant.extraction.md::E43
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Evidence: So if I want to connect to kubemaster, I'm just gonna copy that, and this is automatically going to connect us to the kubemaster node.

### Source 500: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/248_Deployment With Kubeadm - Provision VMs With Vagrant.extraction.md::E44
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Evidence: And so, now you can see, based off of the command prompt, you can see we are now in the kubemaster.

### Source 501: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/248_Deployment With Kubeadm - Provision VMs With Vagrant.extraction.md::E45
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Evidence: And if I just do an ls -la, we can see that I am in fact in the kubemaster.

### Source 502: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/248_Deployment With Kubeadm - Provision VMs With Vagrant.extraction.md::E46
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Evidence: So to log out, or to exit out of the session, I can just do a logout and that's going to take me back to my local machine.

### Source 503: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/248_Deployment With Kubeadm - Provision VMs With Vagrant.extraction.md::E47
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Evidence: And if I once again do a vagrant status, I can then do a vagrant ssh, and I'll connect to kubenode01.

### Source 504: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/248_Deployment With Kubeadm - Provision VMs With Vagrant.extraction.md::E48
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Evidence: And connected to kubenode01, if I just run an uptime, we can see that it's been up for three minutes so we are, in fact, connected to kubenode01.

### Source 505: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/248_Deployment With Kubeadm - Provision VMs With Vagrant.extraction.md::E49
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Evidence: And then I'll log out of this one and then we'll just quickly connect to kubenode02.

### Source 506: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/248_Deployment With Kubeadm - Provision VMs With Vagrant.extraction.md::E50
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Evidence: So I'll do a vagrant ssh kubenode02 and now we're successfully connected onto kubenode02.

### Source 507: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/248_Deployment With Kubeadm - Provision VMs With Vagrant.extraction.md::E51
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Evidence: So that's how you access all of your VMs.

### Source 508: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/248_Deployment With Kubeadm - Provision VMs With Vagrant.extraction.md::E52
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Evidence: So we've got all of our VMs provisioned and we're good to go.

### Source 509: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/248_Deployment With Kubeadm - Provision VMs With Vagrant.extraction.md::E53
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Evidence: So in the next video, we're going to actually bootstrap the Kubernetes cluster using Kubeadm.

### Source 510: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E1
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: Okay.

### Source 511: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E2
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So in this video we're going to be doing a demonstration of bootstrapping a Kubernetes cluster using the kube ADM tool.

### Source 512: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E3
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: Now I've already provisioned three virtual machines using a tool called vagrant.

### Source 513: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E4
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And we've got three nodes.

### Source 514: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E5
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: In this case I've got a master node here I've got a worker node which I'll call node one.

### Source 515: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E6
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: Or you'll look for kube node one on the terminal or in the prompt.

### Source 516: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E7
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And then we've got node two which you'll see is kube node two here.

### Source 517: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E8
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So we've got one master node and two worker nodes.

### Source 518: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E9
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And the one thing I want to point out is if you take a look at the IP addresses we've got a couple of different interfaces.

### Source 519: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E10
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: The main interface that we're going to be using for communication between the cluster is INP zero eight.

### Source 520: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E11
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So you can see the master node has an IP address of 192.168.56.11.

### Source 521: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E12
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: Node one has 192.168.56.21, and node two has an IP address of 192.168.56.22.

### Source 522: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E13
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: Okay, so that's the interface that we're going to use for all of the communications.

### Source 523: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E14
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So for deploying a Kubernetes cluster, there's going to be a couple of tabs that we want to get open, because you're going to see that for the most part the Kubernetes documentation is very good.

### Source 524: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E15
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So you want this installing kube ADM page right here which is under installing Kubernetes with deployment tools and then under bootstrapping clusters with kube ADM.

### Source 525: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E16
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And then you can see all of the different instructions for the different versions.

### Source 526: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E17
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: I'm going to be using version 1.31 which is at the moment the latest version.

### Source 527: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E18
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And then you also want to open up this tab right here which is creating a cluster with Kube ADM.

### Source 528: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E19
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: You can see it's in the same section.

### Source 529: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E20
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So you've got installing kube ADM and then two slots down you've got creating a cluster with kube ADM.

### Source 530: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E21
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And if you're going to be deploying a highly available Kubernetes cluster that's with multiple master nodes, then you want to select creating highly available clusters with kube ADM.

### Source 531: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E22
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: Now we just have a single master node.

### Source 532: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E23
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So we're just going to follow this page here.

### Source 533: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E24
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: But if you have more than one go ahead and follow that one.

### Source 534: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E25
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So let's go to the installing kube ADM.

### Source 535: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E26
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So this is going to be the tool that we use to actually bootstrap a cluster and it's going to give you some prerequisites.

### Source 536: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E27
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So it's just letting you know what are the requirements for your machine.

### Source 537: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E28
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: All of my machines already match those requirements.

### Source 538: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E29
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So that's not a big deal.

### Source 539: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E30
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: But if you are going to be deploying your own cluster, make sure that it's actually compatible.

### Source 540: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E31
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And then we're just going to keep scrolling down for a bit.

### Source 541: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E32
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And we want to see this section right here which is installing a container runtime.

### Source 542: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E33
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So before we can utilize the kube ADM tool you want to make sure that you install a container runtime.

### Source 543: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E34
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So we're going to have to do that.

### Source 544: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E35
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: But we're going to come back to that in a second.

### Source 545: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E36
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: Let's first go ahead and at least get the kube ADM tool installed on all of our machines.

### Source 546: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E37
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And so here if I just keep scrolling down you can see this is where the instructions begin.

### Source 547: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E38
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So the first thing that we're going to do is download the public signing keys for the Kubernetes package repositories.

### Source 548: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E39
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And you can see they've got a different one for each of the different versions.

### Source 549: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E40
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So if you're going to do version 1.31 you're going to select version one dot 31.

### Source 550: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E41
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: If it's a version one dot 32, then you'll have to replace this with one dot 32.

### Source 551: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E42
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: But I'm going to copy this command, and we're going to paste it on all of our, um, all of our nodes because we're going to need cube ADM installed on all three of them.

### Source 552: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E43
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So I'm just going to paste it on all three.

### Source 553: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E44
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And it looks like my copy broke.

### Source 554: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E45
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So let me just copy that again.

### Source 555: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E46
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: Then down here we have to add the specific Kubernetes repository.

### Source 556: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E47
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So this is once again we're just going to copy and paste this.

### Source 557: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E48
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And I'm going to paste this in all three nodes.

### Source 558: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E49
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: Then the last thing that we have to do is we're going to do a sudo apt update.

### Source 559: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E50
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And then we have to install the cube ADM package.

### Source 560: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E51
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: You can see here in the command here we're installing Cubelet cube adm cube CTL.

### Source 561: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E52
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: We don't technically need cube CTL and Cubelet at the moment.

### Source 562: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E53
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: We just want cube ADM.

### Source 563: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E54
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: But at some point we're going to need to download cube CTL as well.

### Source 564: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E55
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So let's go ahead and just install all of them right now.

### Source 565: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E56
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So I'm just going to copy these three commands.

### Source 566: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E57
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And then we're going to go ahead and run them on once again all three nodes.

### Source 567: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E58
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: Okay.

### Source 568: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E59
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So it looks like it's done.

### Source 569: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E60
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: Let's go ahead and take a look at the version of cube ADM that we installed.

### Source 570: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E61
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So we'll say cube ADM version.

### Source 571: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E62
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And we can see that we are running major version one minor version 31.

### Source 572: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E63
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And we can see version 1.31.1.

### Source 573: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E64
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: All right.

### Source 574: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E65
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So now that we've got cube ADM installed, if we go to the bottom of this page we can see that the next step is to install our cluster using cube ADM.

### Source 575: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E66
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So you can go ahead and click on this link.

### Source 576: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E67
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: But I've already got that tab open.

### Source 577: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E68
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: It's the same one as creating a cluster with cube ADM.

### Source 578: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E69
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So I'm going to go to that page.

### Source 579: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E70
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And if you take a look at this page it's going to give us, you know, first of all, the prerequisites for system requirements for any Kubernetes node, which we've already verified.

### Source 580: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E71
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And then if we go down here, we want to start at the instructions page.

### Source 581: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E72
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And the first thing that we have to do is we have to install a container runtime.

### Source 582: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E73
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And we're going to have to install it on all of the nodes.

### Source 583: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E74
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: That's going to be both master and worker nodes.

### Source 584: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E75
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: The reason why is that, you know, obviously the worker nodes will need to have a container runtime so they can run the containers, but all of the control plane components on our master node will be run as pods or as containers.

### Source 585: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E76
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And so since we have containers running, we're going to need a container runtime.

### Source 586: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E77
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So let's open this tab.

### Source 587: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E78
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And here it's going to give you the directions on how to utilize one of these supported container runtimes.

### Source 588: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E79
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: I'm going to be using container D for this demonstration.

### Source 589: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E80
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So if you're going to follow along go ahead and use container D.

### Source 590: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E81
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: But feel free to use whichever one you'd like.

### Source 591: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E82
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And we can select container D.

### Source 592: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E83
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And this is going to give us some information onto as to some of the things that you'll need to configure for container D.

### Source 593: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E84
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So now let's install our container runtime.

### Source 594: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E85
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And for the directions on that, just go ahead and just search for install and then the name of the runtime.

### Source 595: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E86
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And then that's going to take you to the documentation for container D.

### Source 596: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E87
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And you can just follow these directions.

### Source 597: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E88
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: We're just going to use use the app repository to install system D.

### Source 598: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E89
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So here I'm just going to do a sudo apt update and then a sudo apt install dash y container d.

### Source 599: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E90
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And that's going to install container d.

### Source 600: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E91
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And I'm going to do this on every node.

### Source 601: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E92
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: Now after we install our container runtime the next thing that we have to do is take a look at this important section in the documentation, which is cgroup drivers.

### Source 602: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E93
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: Now, if you guys aren't familiar with Cgroups.

### Source 603: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E94
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: Cgroups is the Linux feature, the Linux primitive that allows whether you're working with Docker or Kubernetes, it allows you to specify resource limits on your containers.

### Source 604: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E95
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So if you want to say this container can only use 512MB of Ram, it's using the Cgroups under the hood.

### Source 605: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E96
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: Now, when you configure the Kubelet process and when you configure the the runtime, which in our case is container D, there's two different drivers that are available.

### Source 606: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E97
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: You have cgroup FS which is the default, and then you have system D.

### Source 607: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E98
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: Now you can use whichever one you'd like, but you have to make sure that whichever one you select, both the Kubelet and your container runtime are configured to use the same Cgroup driver.

### Source 608: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E99
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So if the Kubelet is set to Cgroup fs, then the container runtime has to be set to the same thing.

### Source 609: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E100
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: Now if we keep reading, you can see there's a section here that says when system D is chosen as the init system for your Linux distribution, you want to make sure that you set the Cgroup driver to be system D.

### Source 610: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E101
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So let's go ahead and verify what our init system is.

### Source 611: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E102
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: If it's set to system D, then we're going to have to use the system D driver as per the instructions.

### Source 612: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E103
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So the way that you verify is you do PS dash P and then one.

### Source 613: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E104
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And if it says system D that means that's what our init system is.

### Source 614: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E105
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So we'll go ahead and use the system D Cgroup driver.

### Source 615: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E106
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So first things first let's make sure that we know how to set the cgroup driver to be systemd for the kubelet process.

### Source 616: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E107
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: Now here it gives you an example on how to do that.

### Source 617: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E108
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: You have to create a kubelet configuration file.

### Source 618: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E109
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And if you actually want to, you could scroll down a little bit further.

### Source 619: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E110
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And this will give you more detailed instructions on how to do that with kube adm.

### Source 620: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E111
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: Now the first note is important for us, which is in version 1.22 and later.

### Source 621: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E112
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: If the user does not set the Cgroup driver field under the Kubelet configuration, kube adm will default to systemd, which is perfect because we are going to be using the.

### Source 622: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E113
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: We want systemd, and since we are using a version later than 1.22, it already defaults to that.

### Source 623: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E114
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: But if you want to see how to actually set it, you're going to create this, um, cluster configuration.

### Source 624: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E115
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And then here you create the Kubelet configuration.

### Source 625: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E116
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And you want to set the Cgroup driver property to be systemd.

### Source 626: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E117
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And then when you run the kube adm init command, you pass the dash dash config flag so that you can pass in the kube adm config file, which is going to make sure that the kubelet process uses the systemd.

### Source 627: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E118
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: Once again, it's the default for anything later than 1.22.

### Source 628: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E119
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So we're going to just not pass in that file because we don't need to change anything.

### Source 629: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E120
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So we don't have to worry about the kubelet process.

### Source 630: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E121
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: But we do have to make sure that the container runtime is set to utilize the Cgroup driver.

### Source 631: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E122
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So by default it's not going to be using systemd.

### Source 632: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E123
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So if we go to the top of the container runtime page and we select container D and we scroll down, this is the directions on how to set the cgroup driver to be systemd.

### Source 633: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E124
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So we create a file which is going to be the config file for container D which is going to be stored in slash Etsy slash container D in a file called config.toml.

### Source 634: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E125
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And then you have to configure this.

### Source 635: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E126
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So you just got to make sure that this is in there.

### Source 636: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E127
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And that's going to make sure that the secret driver is set to version two.

### Source 637: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E128
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: All right.

### Source 638: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E129
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So I'm going to go ahead and create this directory if it hasn't already been made.

### Source 639: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E130
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So and so I'll go to slash Etsy container D and it looks like I don't have a container d directory.

### Source 640: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E131
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So I'm going to manually create that.

### Source 641: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E132
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And so I'll say sudo mkdir p slash Etsy slash container d.

### Source 642: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E133
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And I'm going to copy this.

### Source 643: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E134
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And we're going to run this on all three of our nodes.

### Source 644: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E135
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And so then at this point we're going to have to generate the configs.

### Source 645: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E136
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: Now the container D process allows us to generate default configuration.

### Source 646: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E137
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So if you don't specify a config file it's going to use these default configurations.

### Source 647: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E138
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And you can actually take a look at these configurations by running the command container D config default.

### Source 648: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E139
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And it's going to spit out the default configuration.

### Source 649: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E140
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So if we don't provide a file it's going to look like this.

### Source 650: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E141
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So I'm going to use this command to generate the configs.

### Source 651: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E142
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And then we're going to make the necessary changes as per the documentation.

### Source 652: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E143
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: Now I've got this nice command right here.

### Source 653: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E144
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And I'm going to show you guys what this command does.

### Source 654: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E145
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: But I'm going to paste this command here.

### Source 655: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E146
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And if we take a look at it it's going to run that same command.

### Source 656: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E147
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And then in the output it's going to pipe it into said.

### Source 657: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E148
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And what it's going to do is it's going to change where it says systemd group set to false, and it's going to change it to systemd group equals true.

### Source 658: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E149
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And then we're going to then send it to a file in slash Etsy slash containerd slash config.toml.

### Source 659: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E150
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And that's going to be as per the directions.

### Source 660: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E151
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: Right.

### Source 661: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E152
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: It's got to be in that file.

### Source 662: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E153
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And we got to have that config.

### Source 663: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E154
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And so all it's doing is it's going to change this from false which is the default configuration.

### Source 664: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E155
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: It's going to change it to true.

### Source 665: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E156
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So I'll run that and I'm going to hit up and I'm going to take this and I'm going to pipe it I'm going to paste it in the other two nodes.

### Source 666: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E157
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And so now if I cat that file.

### Source 667: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E158
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So it's going to be containerd um slash config.toml.

### Source 668: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E159
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And I'm going to grep for.

### Source 669: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E160
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: System D Cgroup just to see if that command actually said it.

### Source 670: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E161
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And I'm going to pass in one extra flag, which is, um, I'm printing out a whole bunch of lines before it just so I can make sure it's in the right section.

### Source 671: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E162
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And so you can see here systemd.

### Source 672: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E163
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: Cgroup equals true.

### Source 673: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E164
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And we have it's under this config section which is the container runtimes dot run c dot options.

### Source 674: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E165
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And so if we take a look at the documentation right that's going to be this line right here.

### Source 675: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E166
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So that did properly set it.

### Source 676: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E167
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And so now the last thing that we need to do is after we make some config changes we have to make sure that we restart container D.

### Source 677: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E168
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And we can just run the systemctl command to restart container D.

### Source 678: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E169
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And that's not what I wanted.

### Source 679: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E170
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So restart container D restart on this one.

### Source 680: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E171
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And looks like I never ran this command on here.

### Source 681: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E172
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So let me run it real quick and then restart container D All right.

### Source 682: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E173
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: Perfect.

### Source 683: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E174
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So now what we're going to do is we're going to go back to creating a cluster with cube ADM.

### Source 684: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E175
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: That's this document here.

### Source 685: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E176
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And we're going to take a look at what are the next steps.

### Source 686: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E177
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So we've got the container runtime installed.

### Source 687: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E178
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: We've made sure that the proper Cgroup driver has been set.

### Source 688: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E179
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And we want to just keep scrolling down and keep going.

### Source 689: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E180
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And here we want to look for initializing control plane node.

### Source 690: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E181
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So the the first instance, the first node in Kubernetes that we're going to actually initialize is going to be the control plane node.

### Source 691: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E182
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: Now in this case once again we have just a single master node.

### Source 692: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E183
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And so we're just going to run the command on there.

### Source 693: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E184
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: If you have multiple master nodes then you're going to have to pick one that you want to run the command first.

### Source 694: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E185
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: Now there's going to be some important instructions that you want to follow here.

### Source 695: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E186
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And if you take a look at step one, is that if you have plans to upgrade a single control plane node to a high available cluster with multiple control plane nodes, you want to make sure you pass in the dash dash control plane dash endpoint and set it to be some virtual IP.

### Source 696: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E187
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So this could be some load balancer and then have it sent to your single instance.

### Source 697: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E188
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: That way when you migrate over, you don't really have to change anything for the most part, and you've already got the load balancer set up to forward it.

### Source 698: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E189
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So if you have plans to do that, you want to make sure you set this to whatever IP you want to use for your API server.

### Source 699: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E190
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: We're not going to do that.

### Source 700: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E191
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: We're we're just going to run this as a single control plane.

### Source 701: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E192
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: Note that we don't have to pass that flag in.

### Source 702: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E193
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: The other thing they have to do is you have to choose a, um, you have to make sure you specify whatever pod subnet you're going to utilize.

### Source 703: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E194
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So the dash dash pod network Cidr is going to be the subnet that the IP addresses for your pods are actually going to pull from.

### Source 704: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E195
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So you set it to be 10.0.0.0 slash 16.

### Source 705: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E196
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: Then all of your pods are going to get an IP address from that 10.0.0.0 slash 16 subnet.

### Source 706: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E197
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So we're going to pass in that flag.

### Source 707: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E198
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So and I'll show you guys what that looks like.

### Source 708: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E199
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: Um and then on top of that kube ADM tries to detect the container runtimes by using a list of well-known endpoints.

### Source 709: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E200
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So if you actually go here under the container runtime page.

### Source 710: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E201
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: This is going to just quickly show you, I think somewhere in this document, what are the default locations to look for?

### Source 711: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E202
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: Uh, let me see if I can find it here.

### Source 712: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E203
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And I don't think it's here actually it might be under installing kube adm.

### Source 713: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E204
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And I'm going to just scroll down here.

### Source 714: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E205
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: Here we go.

### Source 715: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E206
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So these are going to be the paths to um you know the, the way that, that each one of these container runtimes are set to be configured.

### Source 716: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E207
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And these are usually the default ones.

### Source 717: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E208
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: This is just saying that if for some reason it was not one of the default ones, you have to pass in the dash dash CRE, dash socket and then pass in the path to that socket, but it automatically detects it.

### Source 718: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E209
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So we don't need to actually pass in that flag.

### Source 719: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E210
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: Now, the last thing that we are going to cover when it comes to the flags for the kube ADM utility is the dash dash API server advertise address.

### Source 720: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E211
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So when you're working with a single control plane node cluster, we're going to use this one to tell the cluster what IP address is going to be for your cube API server.

### Source 721: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E212
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So this will set this to be the IP address of our master node.

### Source 722: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E213
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And if I go back and I go to my master node and I do an iPad, we're going to pass in that flag and we're going to set it to be the IP address of the master node, which is 192.168.56.11.

### Source 723: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E214
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So whatever IP address your other nodes will want to talk to your master node through.

### Source 724: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E215
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: You can see I've got another interface.

### Source 725: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E216
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: I don't want to use this one.

### Source 726: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E217
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: This is this is like an internal interface used by vagrant which I use to spin up my cluster.

### Source 727: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E218
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So this is kind of like a irrelevant interface.

### Source 728: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E219
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So that's why I'm going to pass in that flag to make sure that it picks the right interface.

### Source 729: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E220
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So we're now officially ready to run the cube adm init command.

### Source 730: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E221
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And we're going to run it on the master node.

### Source 731: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E222
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And I'm going to show you the full command here.

### Source 732: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E223
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And so this is what the command is going to look like.

### Source 733: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E224
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: We do pseudo cube ADM init.

### Source 734: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E225
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: Then once again we're going to pass in the Dash Dash API server advertise address.

### Source 735: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E226
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: It's going to be whatever the IP address of our master node is.

### Source 736: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E227
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: Then we're going to specify the pod network Cidr.

### Source 737: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E228
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So remember this is going to be the subnet that all of your pods are going to pull an IP address from.

### Source 738: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E229
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So all of my pods are going to be in the 10.244.0.0 slash 16 subnet.

### Source 739: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E230
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And then we have the upload cert.

### Source 740: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E231
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So this is going to make sure that we upload all of the certificates to a secret, so that all of the other nodes will have access to the certificates.

### Source 741: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E232
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And at that point we can go ahead and hit run.

### Source 742: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E233
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And it's going to run all of the necessary checks beforehand.

### Source 743: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E234
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And then after it's done, then it's going to set up and initialize our control plane node.

### Source 744: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E235
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: All right.

### Source 745: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E236
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So it finished initializing our master node.

### Source 746: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E237
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And I want to just kind of quickly go over some of the output.

### Source 747: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E238
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So if we take a look here we can see that it's generating the CA certificates.

### Source 748: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E239
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And then it's going to go ahead and generate the certificates for the API server.

### Source 749: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E240
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And then you can see it's configuring that.

### Source 750: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E241
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: It also generated all the certificates for the etcd server and all of the other different components that you can see. just go one by one, creating all the necessary things for each of the different components.

### Source 751: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E242
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: You could see the conf file for your cubelet.

### Source 752: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E243
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: You could see the controller manager configuration, and then it went ahead and provisioned.

### Source 753: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E244
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: The static pod manifests for the different components and you can see it then brought up the different components.

### Source 754: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E245
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And so that's really all it's doing under the hood.

### Source 755: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E246
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: If you just take a look at the output, it just explains the step by step exactly what it's doing.

### Source 756: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E247
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And then after it's done, it's going to have provisioned a config file so that we can actually connect to our Kubernetes cluster.

### Source 757: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E248
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And then if we want to just take a look at it, we could just do a cat and then just go to that path of that file.

### Source 758: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E249
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So it's going to be Kubernetes admin conf.

### Source 759: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E250
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And I'll need a sudo.

### Source 760: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E251
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And you can see here it's got a kube config file so that we can actually talk to our master node.

### Source 761: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E252
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So here we're going to just copy it to the default home directory in this case.

### Source 762: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E253
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And I'm going to paste that in.

### Source 763: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E254
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And now I should be able to do a kubectl.

### Source 764: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E255
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And then here if I do get nodes, it should be able to connect and give back all of the nodes.

### Source 765: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E256
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: You can see we've got one node and it's currently in a not ready state.

### Source 766: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E257
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: That's not a problem.

### Source 767: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E258
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: We expect it to be in a not ready state because we haven't set up the the network plugin that we're going to use.

### Source 768: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E259
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So we have to get the network plugin up and running.

### Source 769: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E260
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And then this will move into a ready status.

### Source 770: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E261
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: Now if I go back up to the output of the cube adm init command, it's going to tell us what we have to do next.

### Source 771: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E262
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And so you know I already did this section right here.

### Source 772: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E263
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And then what we need to do is you need to deploy a pod network for your cluster.

### Source 773: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E264
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: That's basically your network CNI, your network plugin or your CNI.

### Source 774: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E265
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And then afterwards it says you can then join any number of worker nodes by running the following command on the worker nodes.

### Source 775: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E266
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So setting up the worker nodes is very easy.

### Source 776: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E267
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: You just run this command.

### Source 777: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E268
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So I'm going to copy this and save this to my notepad so that I have it for reference that we could use later on.

### Source 778: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E269
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: Um, and then that's all we have to do.

### Source 779: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E270
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: Now, if I go to the documentation and we take a look at, uh, creating a high availability cluster.

### Source 780: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E271
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And I'm going to just show you what the output would look like if we were using a setup with multiple master nodes.

### Source 781: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E272
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: When we do a cube adm init, you're going to see an output that looks like this.

### Source 782: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E273
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So ours right.

### Source 783: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E274
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: If you look at this and I wish it was a little bit wider, you can see you could join any number of worker nodes.

### Source 784: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E275
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So we saw the same thing.

### Source 785: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E276
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: However when you're doing a multi master node you can also it'll print out the the command that you need to run with the proper token for setting up all of the other control plane nodes.

### Source 786: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E277
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So at this point, if you had multiple master nodes, you would run this command that it gave us right here, so that you can then bootstrap the other control plane nodes and connect them to the cluster.

### Source 787: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E278
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: We only have one control plane node.

### Source 788: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E279
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So we didn't get that output.

### Source 789: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E280
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And that's exactly what we want.

### Source 790: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E281
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: We only have to set up the worker nodes here.

### Source 791: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E282
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: I just wanted to make sure you guys understand how to do it.

### Source 792: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E283
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: If you did have multiple control plane nodes.

### Source 793: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E284
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: All right.

### Source 794: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E285
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So I'm back at the creating a cluster with cube ADM documentation.

### Source 795: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E286
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: We can see that we ran the cube adm init command.

### Source 796: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E287
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: We saw this output.

### Source 797: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E288
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So we know how to get the worker node to join.

### Source 798: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E289
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: If we take a look at the directions, it's going to tell us to install a pod network add on.

### Source 799: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E290
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So we have to install our CNI plugin.

### Source 800: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E291
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And we can refer to this documentation if we want to see the different add ons.

### Source 801: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E292
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And so here's a list of the different add ons that we can utilize.

### Source 802: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E293
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: I'm going to use in this case flannel.

### Source 803: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E294
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So we're going to go to flannel.

### Source 804: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E295
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: Select that one.

### Source 805: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E296
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And it's going to take us to the documentation page for flannel.

### Source 806: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E297
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: I'm going to zoom in a little bit for you guys.

### Source 807: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E298
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And you're going to see that usually it's pretty easy to deploy a network plugin.

### Source 808: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E299
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: Usually they give you a um, basically a Kubernetes manifest to actually deploy all of the necessary resources.

### Source 809: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E300
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And so in this case we have this command right here kubectl apply f and you just pass in that URL and it's going to deploy it.

### Source 810: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E301
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And that's really all you have to do.

### Source 811: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E302
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: However if you are using a custom pod Cidr network, which is basically if you're not using the default ten 244 .0.0 16, you have to first download the above manifest and modify the network to match your own.

### Source 812: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E303
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So we are using the default one so we don't have to do that.

### Source 813: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E304
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: But I want to show you guys where you would change this just so that you guys know exactly what to do.

### Source 814: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E305
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So we're going to go back.

### Source 815: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E306
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: I'm going to go to my master node and I'm going to do just a curl.

### Source 816: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E307
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And I'm going to download that file.

### Source 817: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E308
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: I'm going to open that file up.

### Source 818: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E309
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: Let's see where is it.

### Source 819: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E310
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: I'm sorry I didn't mean to do a curl.

### Source 820: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E311
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: I wanted to do a double wget.

### Source 821: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E312
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So I actually download it.

### Source 822: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E313
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: Okay so we've got the file.

### Source 823: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E314
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: Let's open this up here.

### Source 824: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E315
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And we take a look at all of the resources it's going to create for us.

### Source 825: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E316
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: We can see it's going to create a namespace a service account a cluster role.

### Source 826: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E317
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: Don't worry too much about those cluster role binding and all of that.

### Source 827: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E318
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: Now this is where we would configure our pod network.

### Source 828: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E319
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So here you can see it's set to 210 244 .0.0 slash 16.

### Source 829: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E320
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: If you want to change that make sure it just matches up with whatever pod Cidr network you configured when you ran the Kube cube adm command.

### Source 830: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E321
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So we use ten 244 .0.0 slash 16.

### Source 831: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E322
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So we're just going to leave this as the default.

### Source 832: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E323
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: All right.

### Source 833: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E324
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And so at this point I could just do a cube CTL apply dash f cube flannel.

### Source 834: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E325
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And it's going to go ahead and deploy the network plugin.

### Source 835: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E326
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So after it's been deployed we can go ahead and take a look at all the resources it created.

### Source 836: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E327
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So I'm going to do a kubectl get pods dash n.

### Source 837: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E328
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: Let's check the kube system namespace.

### Source 838: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E329
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: We can see that it didn't deploy anything there.

### Source 839: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E330
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: But I believe it's going to use a namespace called I think it's flannel.

### Source 840: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E331
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And let's just do a kubectl get namespace because I cube flannel.

### Source 841: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E332
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So that's the namespace that's using.

### Source 842: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E333
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: All right.

### Source 843: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E334
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: We can see that we've got one pod running.

### Source 844: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E335
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And so at this point I would assume that everything is up and ready to go.

### Source 845: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E336
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So if I just do a kubectl get nodes now we can see that the cube Master moved into a ready state because we successfully deployed the network plugin.

### Source 846: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E337
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And so now the last thing that we have to do is just get the nodes to join the cluster.

### Source 847: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E338
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And the way we do that is by utilizing that command I saved, we just copy it and we just say sudo and then paste it in and then just run that.

### Source 848: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E339
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And it's going to make sure that this worker node joins the cluster.

### Source 849: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E340
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And I'll do the same thing here sudo then paste that command in and we can see that the first one already finished successfully joined the cluster.

### Source 850: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E341
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And it you know did a few checks.

### Source 851: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E342
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: The Kubelet was informed of a new secure connection details.

### Source 852: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E343
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So it was able to connect to the API server and everything's good to go.

### Source 853: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E344
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So now if I go back to the master node and I do a kubectl get node, we can see that we've got our Kubernetes state and we've got node one and node two in a ready state.

### Source 854: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E345
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And if I check that kube flannel namespace again you're going to see that we'll have two more pods running.

### Source 855: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E346
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And so it's going to deploy a instance of the that the network plugin agent on every single one of the nodes so that it can actually handle network on all of them.

### Source 856: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E347
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So every time you add a new node it's going to deploy one of these pods onto there.

### Source 857: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E348
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So that's why you'll see three of them in that case.

### Source 858: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E349
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So at this point our cluster should be ready to go.

### Source 859: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E350
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: Let's go ahead and test it out I'm going to just deploy a single pod.

### Source 860: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E351
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So I'll say kubectl run I'll give this pod a name of web and I'll say dash dash image equals.

### Source 861: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E352
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And I'll just say nginx in this case.

### Source 862: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E353
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So here we created the pod.

### Source 863: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E354
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: We'll do a kubectl get pod.

### Source 864: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E355
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And let's take a look.

### Source 865: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E356
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: We can see it's in a container creating state.

### Source 866: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E357
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And I'm going to do a dash w so we can watch.

### Source 867: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E358
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: It's going to oh it looks like it already moved into a running state.

### Source 868: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E359
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So we've got in a running state.

### Source 869: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E360
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: So it looks like everything's working.

### Source 870: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E361
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: Everything's good to go.

### Source 871: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E362
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: We could just go ahead and delete that now.

### Source 872: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E363
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: And there you go.

### Source 873: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/249_Demo - Deployment with Kubeadm.extraction.md::E364
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 249_Demo - Deployment with Kubeadm.txt
- Evidence: We have now successfully deployed a Kubernetes cluster using the kube adm CLI utility.

### Source 874: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E1
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: Instructor: For the first question, it's asking us to install kubeadm and the kubelet package on the control plane, as well as node1.

### Source 875: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E2
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: So we've got the terminal open here and we can see we're automatically connected to node1.

### Source 876: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E3
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: So I'm gonna open up a second terminal.

### Source 877: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E4
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: The first one's connected to the control plane.

### Source 878: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E5
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: The second one, I'm gonna SSH into node1.

### Source 879: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E6
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: And I've got the documentation right here for installing kubeadm.

### Source 880: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E7
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: And so the first thing that we have to do is let's go to the container runtime and let's set up these forwarding rules first.

### Source 881: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E8
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: So we always have to set these rules up first.

### Source 882: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E9
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: So I'm gonna copy this and we're gonna go back and we're gonna paste this in both terminals.

### Source 883: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E10
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: So we're gonna set this up on the control plane, as well as node1.

### Source 884: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E11
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: Now, the next thing that we have to do is install kubeadm and the kubelet package.

### Source 885: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E12
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: And it's telling us to install this specific version.

### Source 886: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E13
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: So that's something to keep in mind.

### Source 887: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E14
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: So let's go back to the documentation.

### Source 888: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E15
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: And if we scroll down here, this is gonna give us instructions on how to set up the kubeadm tool.

### Source 889: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E16
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: And there's gonna be different instructions based off of which distribution you're using.

### Source 890: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E17
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: So let's verify what distribution we're actually using.

### Source 891: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E18
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: And so we could do that by running, cat /etc/*-release.

### Source 892: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E19
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: Okay, and we could see that this is using Ubuntu and I'm gonna run this on the control plane node, as well.

### Source 893: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E20
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: Yep, and we could see that this is using Ubuntu as well.

### Source 894: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E21
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: All right, so we're gonna leave this on Debian and we're gonna just copy this and I'm gonna paste this into both terminals.

### Source 895: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E22
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: Then, we have to download the Google Cloud public signing key.

### Source 896: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E23
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: So we'll copy this and we're gonna run this on both nodes.

### Source 897: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E24
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: So when we paste this, we see that we get this error.

### Source 898: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E25
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: It says, curl failed writing body.

### Source 899: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E26
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: This error is a little misleading, but what's happening is, we're downloading the gpg key and we're downloading it to this folder /etc/apt/keyrings.

### Source 900: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E27
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: And if we actually go back to the documentation, it says that in releases older than Debian 12 and Ubuntu 22.04, this folder doesn't exist.

### Source 901: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E28
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: So you're gonna have to create this yourself.

### Source 902: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E29
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: So let's go ahead and just do a mkdir to create the folder.

### Source 903: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E30
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: So we'll do etc/apt/keyrings, and we'll run this on both to create that directory.

### Source 904: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E31
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: And after we create it, if we run the same command, we should see that there's no issues when we run it now.

### Source 905: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E32
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: And then, we'll run it on the node1.

### Source 906: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E33
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: Then, we'll add the Kubernetes apt repository on both nodes.

### Source 907: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E34
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: And then here, we're going to do an update.

### Source 908: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E35
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: Then, we're going to install all of these.

### Source 909: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E36
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: And we're gonna, instead of copying all of this all at once, I'm gonna do this one by one.

### Source 910: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E37
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: And that's because this is going to install the latest version.

### Source 911: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E38
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: We don't want the latest version.

### Source 912: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E39
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: The instructions are specifically asking 1.26.0.

### Source 913: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E40
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: So let's do this one by one.

### Source 914: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E41
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: And then, I'm gonna copy this, but I don't actually wanna run the command.

### Source 915: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E42
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: So we'll do, sudo apt install, we want kubeadm and then to specify a version, we'll say =, and then we'll copy this version.

### Source 916: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E43
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: And I'm gonna do a -y here.

### Source 917: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E44
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: So we'll do kubeadm, we want kubelet and we'll copy this same version.

### Source 918: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E45
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: And then we want kubectl, as well.

### Source 919: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E46
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: And I will copy this command and we will run this on the other node, as well.

### Source 920: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E47
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: Okay, so that's set up and then, we'll just copy this last command, as well.

### Source 921: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E48
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: All right, and so that should be everything we need to do for the first question.

### Source 922: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E49
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: So we'll just validate that.

### Source 923: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E50
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: Okay, so the next question is asking us, what version of the kubelet is installed.

### Source 924: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E51
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: So we can just run a, kubelet --version and we already know it's gonna be version 1.26.0.

### Source 925: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E52
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: The next question is asking, how many nodes are part of the Kubernetes cluster?

### Source 926: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E53
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: So for that, we'll go to the control plane and run, kubectl get nodes.

### Source 927: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E54
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: We can see that there's an error, couldn't get current server API group list.

### Source 928: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E55
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: So this error is actually expected because we actually haven't initialized our cluster yet.

### Source 929: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E56
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: We haven't run the kubeadm tool to actually initialize it.

### Source 930: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E57
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: So that's to be expected.

### Source 931: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E58
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: So go ahead and just select a zero.

### Source 932: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E59
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: Okay, so now, we're going to bootstrap our Kubernetes cluster using the kubeadm tool.

### Source 933: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E60
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: And so, we want to initialize the control plane node, the master node, and we're gonna pass in two flags.

### Source 934: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E61
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: So here, we're gonna set the API server advertise IP address to be whatever the IP address of ethernet zero is.

### Source 935: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E62
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: And then, we're also going to set the pod network CIDR flag to be 10.244.0.0/16.

### Source 936: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E63
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: So let's go ahead and get the IP address.

### Source 937: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E64
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: So if we run an, ip add, we can see that for eth0, the IP address is 192.7.220.6.

### Source 938: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E65
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: So now, we can just do a, kubeadm init, and then we gotta do, --, and I'm gonna copy the name of this flag and we're gonna set it to this IP address.

### Source 939: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E66
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: And then, we'll do a, --pod-network-cidr, which is gonna be set to 10.244.0.0/16.

### Source 940: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E67
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: And that's going to initialize the control plane.

### Source 941: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E68
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: And I realize there's a typo.

### Source 942: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E69
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: This is just kubeadm, and we'll let that run.

### Source 943: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E70
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: Okay, and once that's complete, the instructions does say, once done, set up the default kubeconfig file and wait for the node to be part of the cluster.

### Source 944: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E71
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: So I'm going to, then, just copy these instructions right here, paste that, that's going to set up our kubeconfig.

### Source 945: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E72
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: And so now, we can just do a, kubectl get nodes and we should see that we've got our one control plane node, which at the moment is in a NotReady state, but that's to be expected.

### Source 946: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E73
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: And we'll go ahead and run the verification.

### Source 947: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E74
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: The next question is asking us to generate a kubeadm join token.

### Source 948: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E75
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: Or you can just copy the one we received from the kubeadm init command.

### Source 949: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E76
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: And that's gonna be this one right here.

### Source 950: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E77
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: So just go ahead and copy that.

### Source 951: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E78
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: We'll hit OK.

### Source 952: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E79
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: The next question is telling us to have node1 join the cluster using this join token.

### Source 953: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E80
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: So make sure you copy that, go to node1 and all you have to do is just paste the join token.

### Source 954: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E81
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: We run the validation, we should see it should be good.

### Source 955: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E82
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: And then, we'll go to the next question.

### Source 956: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E83
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: And so for the final question, we want to install a network plugin.

### Source 957: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E84
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: And in this case, the instructions are telling us to install flannel.

### Source 958: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E85
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: So we're gonna have to go to the documentation to figure out how to do that.

### Source 959: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E86
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: And if you go back to the output of the kubeadm init command, it's gonna give us a link where we can take a look at all of the network addons.

### Source 960: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E87
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: So we'll just hit control and then click.

### Source 961: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E88
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: That's gonna open up a tab.

### Source 962: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E89
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: In here, there's gonna be all of the network addons.

### Source 963: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E90
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: So look for, what was it, flannel.

### Source 964: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E91
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: So we wanna select flannel and it's gonna take us to this link.

### Source 965: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E92
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: And you'll see that deploying flannel is very easy.

### Source 966: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E93
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: It's just one command.

### Source 967: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E94
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: So we can just copy this, go to our control plane, hit paste and it's going to create all of the necessary configurations to get flannel up and running.

### Source 968: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E95
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: We'll go ahead and hit Check and we'll probably need to give it a couple seconds to actually initialize.

### Source 969: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E96
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: And so let's do, kubectl get pod -A and we can see that's up and running now.

### Source 970: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E97
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: So let's go ahead and run the validation again and we can see it's succeeded.

### Source 971: certified-kubernetes-administrator-with-practice-tests/11_Install _Kubernetes the kubeadm way_/251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).extraction.md::E98
- Source: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Evidence: And so, that's going to wrap up this lab.

### Source 972: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/257_Helm Charts.extraction.md::E24
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 257_Helm Charts.txt
- Evidence: And then we have the name of the chart, a description, type of chart, et cetera.

### Source 973: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/257_Helm Charts.extraction.md::E47
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 257_Helm Charts.txt
- Evidence: The next is the name of the chart, which is set to WordPress, followed by a description.

### Source 974: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/258_Working With Helm - Basics.extraction.md::E21
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 258_Working With Helm - Basics.txt
- Evidence: It's up to chart developers to mention what they think is important in this description page.

### Source 975: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/261_Lifecycle Management With Helm.extraction.md::E21
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 261_Lifecycle Management With Helm.txt
- Evidence: Then we run a "kubectl describe pod" command to see more details about the image, and we see that it's running Nginx version 1.19.2.

### Source 976: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/261_Lifecycle Management With Helm.extraction.md::E32
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 261_Lifecycle Management With Helm.txt
- Evidence: So we follow the same Helm process again and get the new pod name then run a describe on it and we see the new version, which is Nginx 1.21.4.

### Source 977: certified-kubernetes-administrator-with-practice-tests/12_(2025 Updates)Helm Basics/261_Lifecycle Management With Helm.extraction.md::E61
- Source: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 261_Lifecycle Management With Helm.txt
- Evidence: And there is a note in description that says it's a rollback to Revision 1.

### Source 978: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/265_Installation_Setup.extraction.md::E3
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 265_Installation_Setup.txt
- Evidence: Kustomized can be installed on a Linux, Windows, or a Mac machine, and the Kustomized team has made it very easy to install Kustomize by providing a nice script that will automatically detect your operating system and install the appropriate version of Kustomize.

### Source 979: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/265_Installation_Setup.extraction.md::E4
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 265_Installation_Setup.txt
- Evidence: So on your terminal, run the following command, which will download the script, and that script will pretty much be responsible for installing Kustomize for you, so you don't have to run any other commands.

### Source 980: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/265_Installation_Setup.extraction.md::E5
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 265_Installation_Setup.txt
- Evidence: It's all done in that script itself.

### Source 981: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/265_Installation_Setup.extraction.md::E9
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 265_Installation_Setup.txt
- Evidence: If there's still an issue, then rerun the installation script again.

### Source 982: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/276_Patches Intro.extraction.md::E22
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 276_Patches Intro.txt
- Evidence: So this is basically specifying the match criteria on exactly what resource do we want to apply the patch on.

### Source 983: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/283_Components.extraction.md::E18
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 283_Components.txt
- Evidence: We've got the development variation, the premium one for premium customers, and then a self-hosted version for any one of our customers that wants to self-host our application.

### Source 984: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/283_Components.extraction.md::E22
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 283_Components.txt
- Evidence: And let's say that only the premium and the self-hosted version of our application should have caching enabled.

### Source 985: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/283_Components.extraction.md::E30
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 283_Components.txt
- Evidence: And the problem with doing that is, all three overlays will get the configuration, but remember, only self-hosted and premium should get the caching configuration, we don't want development to get it.

### Source 986: certified-kubernetes-administrator-with-practice-tests/13_(2025 Updates)Kustomize Basics/283_Components.extraction.md::E33
- Source: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 283_Components.txt
- Evidence: Well, we can copy the caching configuration in both of the premium and self-hosted overlays, and that would work just fine.

### Source 987: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/285_Troubleshooting - Section Introduction.extraction.md::E3
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 285_Troubleshooting - Section Introduction.txt
- Evidence: We start with troubleshooting application failures, then move on to troubleshooting control plane failures, and then to worker node failures, and finally network related issues.

### Source 988: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/286_Application Failure.extraction.md::E23
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 286_Application Failure.txt
- Evidence: Check the events related to the pod using the describe command.

### Source 989: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E47
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Evidence: We're gonna do a kubectl, we're gonna do a kubectl describe deployment web app about MySQL.

### Source 990: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E99
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Evidence: Now, last time the issue was with the name, but now looks like the name is correct, it is MySQL service, but we will anyway, also check the deployment on what is set, describe Deploy web app MySQL.

### Source 991: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E105
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Evidence: So we're gonna do a describe service, MySQL service.

### Source 992: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E146
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Evidence: So we're gonna do describe service, web service, and we see the name, web service, name space is gamma, has the right selectors and has the endpoints.

### Source 993: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E154
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Evidence: So we do our kubectl get pods, we do describe deployment web app, MySQL, and we see that it has one desired and one available.

### Source 994: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E168
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Evidence: Let's check the endpoint, describe MySQL service.

### Source 995: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E171
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Evidence: So if you look at the selectors right here, it says name equals SQL 00001, and for the pod, so describe POD MySQL.

### Source 996: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E177
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Evidence: Okay, now we're going to do a describe pod, no describe Service MySQL.

### Source 997: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E205
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Evidence: So let's do a describe on MySQL, describe deployment on MySQL.

### Source 998: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E281
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Evidence: So let's check out, okay, let's look at the deployment, describe deploy web app MySQL.

### Source 999: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/288_Lab Solution - Application Failure _ (Optional).extraction.md::E288
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 288_Lab Solution - Application Failure _ (Optional).txt
- Evidence: So let's do a describe pod MySQL.

### Source 1000: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/289_Control Plane Failure.extraction.md::E1
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 289_Control Plane Failure.txt
- Evidence: In this lecture we will see different ways of troubleshooting control plane failures.

### Source 1001: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/289_Control Plane Failure.extraction.md::E2
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 289_Control Plane Failure.txt
- Evidence: We start by checking the status of the nodes in the cluster, see if they are all healthy, then check the status of the pods running on the cluster.

### Source 1002: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/289_Control Plane Failure.extraction.md::E3
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 289_Control Plane Failure.txt
- Evidence: If we had control plane components deployed as pods in case of a cluster deployed with the kube ADM tool, then we can check to make sure that the pods in the kube system namespace are running, or else if the control plane components are deployed as services, as in our case, then check the status of the services such as the kube API server, the controller, manager and scheduler on the master nodes, and the Kubelet and kube proxy service on the worker nodes.

### Source 1003: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/289_Control Plane Failure.extraction.md::E4
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 289_Control Plane Failure.txt
- Evidence: Next, check the logs of the control plane components again, in case of kube adm, use the kube control logs command to view the logs of pods hosting the control plane components.

### Source 1004: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/289_Control Plane Failure.extraction.md::E5
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 289_Control Plane Failure.txt
- Evidence: In case of services configured natively on the master nodes, view the service logs using the host's logging solution.

### Source 1005: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/289_Control Plane Failure.extraction.md::E6
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 289_Control Plane Failure.txt
- Evidence: In our case, we could use the general control utility to view the kube API servers logs.

### Source 1006: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/289_Control Plane Failure.extraction.md::E7
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 289_Control Plane Failure.txt
- Evidence: This should be a good start.

### Source 1007: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/289_Control Plane Failure.extraction.md::E8
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 289_Control Plane Failure.txt
- Evidence: For more tips, refer to the Kubernetes documentation page for troubleshooting clusters.

### Source 1008: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/289_Control Plane Failure.extraction.md::E9
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 289_Control Plane Failure.txt
- Evidence: This will help in the upcoming practice test as well as in the exam.

### Source 1009: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E1
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: -: Okay, so in this video we're going to work on troubleshooting control plane failure.

### Source 1010: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E2
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So the first question is, the cluster is broken.

### Source 1011: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E3
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: We tried deploying an application, but it's not working troubleshoot and fix the issue.

### Source 1012: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E4
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So before we begin, a quick tip if you don't have the alias set already on your prompt so you could do a alias, k equals kubectl.

### Source 1013: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E5
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: And also if you don't have auto completion then one thing you could do is you could go to the Kubernetes documentation pages search for kubectl cheat sheet and then the first thing that comes here is the kubectl completion bash.

### Source 1014: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E6
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So let's copy and let's run that.

### Source 1015: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E7
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: And this basically gives you auto completion.

### Source 1016: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E8
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So you do a kubectl get and then it automatically gives you the options.

### Source 1017: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E9
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: The other thing is, so if you're setting an alias you should do this as well to get the alias for the short form for kubectl.

### Source 1018: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E10
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So I'm gonna set this as well, that way I can just do kubectl get and then yeah, order completion for the short form.

### Source 1019: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E11
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: Okay, so we're gonna look at the status of the cluster.

### Source 1020: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E12
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So let's do a kubectl, get nodes and we see that the nodes seems to be in a ready state.

### Source 1021: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E13
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So that's good.

### Source 1022: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E14
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: There is, it says there are deployments.

### Source 1023: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E15
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So let's take a look at the deployments.

### Source 1024: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E16
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: And we see that there is a app deployed, but it's not ready.

### Source 1025: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E17
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So there is one container or one pod in the deployment but that pod is not ready.

### Source 1026: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E18
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So let's take a look at it.

### Source 1027: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E19
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: Let's do a describe, so you describe deployment app and we see that it's one desired, zero available, so there's, that's one unavailable and there isn't anything here that's really helpful.

### Source 1028: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E20
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So here it says scale that replica set to one.

### Source 1029: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E21
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So let's take a look at the replica set, get rs, we have one replica set.

### Source 1030: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E22
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: Let's take a look at that.

### Source 1031: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E23
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: Describe replica set app.

### Source 1032: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E24
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: And we see that the desired is one, but it's still waiting.

### Source 1033: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E25
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: And here you have the events and it says creating pod.

### Source 1034: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E26
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So let's take a look at the pod and we see that there is a pod created, but it's in a pending state.

### Source 1035: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E27
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: Let's take a closer look at that pod.

### Source 1036: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E28
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: And we see the events have not started yet but everything else seems okay but it's in a pending state.

### Source 1037: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E29
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So when a pod is in a pending state, it's most likely, that indicates that it has not been assigned a node.

### Source 1038: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E30
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So if you look at the node here, it's set to none.

### Source 1039: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E31
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: That means the pod has not been assigned to a node and the job of assigning a pod to a node is scheduler's job, right?

### Source 1040: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E32
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So we have to look at the status of the scheduler.

### Source 1041: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E33
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So let's do a, and we know that scheduler runs as a pod in the kube system name space.

### Source 1042: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E34
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: And here you have the scheduler and it has control plane at the end.

### Source 1043: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E35
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So that means it's a static pod and its status is crash loop back off.

### Source 1044: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E36
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So let's take a look at the pod in more detail in the kube system name space and we're looking at the kube-scheduler.

### Source 1045: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E37
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: Okay, so we see at the bottom here that seems to be restarting quite often.

### Source 1046: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E38
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: And then it says fail to start container kube-scheduler error response from daemon, OCI runtime create failed, starting container process kube-scheduler, executable file not found.

### Source 1047: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E39
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So it says this executable is not found obviously it looks like it's not, right.

### Source 1048: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E40
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So let's take a look at the options or the command that are used to run this pod.

### Source 1049: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E41
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So here we can see that there is an incorrect command that's wrong and that's the reason.

### Source 1050: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E42
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So we know that the kube-scheduler is a static pod.

### Source 1051: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E43
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So the file is in TTC Kubernetes manifests and we have the kube-scheduler.yaml file here.

### Source 1052: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E44
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So this is the manifest file for kube-scheduler and within that there's a wrong command.

### Source 1053: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E45
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So let's go and edit that file and then remove the extra characters.

### Source 1054: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E46
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: And we're gonna save that and we'll see if we have we'll see the status of the pod and its in a creating container config error state.

### Source 1055: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E47
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: Yep, it's now in a running state and we'll just watch until, we just watch until it's ready.

### Source 1056: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E48
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So let's give it a few seconds.

### Source 1057: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E49
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: Still not ready.

### Source 1058: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E50
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: Let's take a look at the logs.

### Source 1059: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E51
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: Okay, okay, so it's finally in ready state.

### Source 1060: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E52
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: And let's take a look at the pods.

### Source 1061: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E53
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: And we have the pod is now in ready stage.

### Source 1062: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E54
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: Let's take a look at the deployment and we have one of one ready.

### Source 1063: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E55
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: Okay, okay, so that's, that's good.

### Source 1064: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E56
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: Let's go to the next one.

### Source 1065: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E57
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: Now it says scale the deployment app to two parts.

### Source 1066: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E58
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: Let's do a kubectl.

### Source 1067: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E59
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So let's get the deploy.

### Source 1068: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E60
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: And we have app with one pod, let's scale it up, kubectl scale deployment app and replicas is two, there's two pods.

### Source 1069: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E61
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: Okay, even though the deployment was scaled to two the number of pods does not seem to increase investigate and fix the issue.

### Source 1070: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E62
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So let's check the status of pods and we see that it's still just one, but we have the deployment here.

### Source 1071: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E63
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: It says one of two, ready.

### Source 1072: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E64
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So let's take a look at the deployment.

### Source 1073: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E65
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: Kubectl describe deploy app, and we see the image set we see scale that replica set to one, but we don't see it the deployment, scaling up the replica set to two.

### Source 1074: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E66
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: However, here we see the number of replicas to be two.

### Source 1075: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E67
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: Two is the desired state and only one is available.

### Source 1076: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E68
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So the job of updating a deployment the job of updating a replica set or scaling up a replica set is the controller managers.

### Source 1077: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E69
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So it's the deployment controller and all the controllers that as, as we know the deployment controller, the replica set controller they're all controlled by the controller manager.

### Source 1078: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E70
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So let's take a look at the status of the controller manager.

### Source 1079: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E71
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So we're gonna do a kube system and we see that the kube controller manager is in a crash loop back of state.

### Source 1080: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E72
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So let's take a look at the kube controller manager.

### Source 1081: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E73
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So within the new system we're going to describe this particular pod.

### Source 1082: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E74
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: And we see that says back off, restarting fill container.

### Source 1083: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E75
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: We don't see anything useful here in the events.

### Source 1084: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E76
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: Let's take a look at it.

### Source 1085: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E77
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So here it says crash loop back off terminated error.

### Source 1086: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E78
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: The exit code is one and the command seems to be correct.

### Source 1087: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E79
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: There's isn't anything at there.

### Source 1088: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E80
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So let's take a look at the logs.

### Source 1089: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E81
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So let's do a kubectl logs this one in the kube system name space.

### Source 1090: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E82
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: Okay, so here it says this particular file there's no such file or directory.

### Source 1091: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E83
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So this file is not found.

### Source 1092: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E84
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: Let's check if that file exists.

### Source 1093: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E85
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: Of course that file does not exist because there seems to be something wrong with it.

### Source 1094: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E86
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So let's check, let's check where this file is specified in the kube controller manager.

### Source 1095: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E87
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So we know that the cube controller manager is also a static pod.

### Source 1096: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E88
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So that means it must be in the slash ADC Kubernetes manifests directory.

### Source 1097: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E89
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: And then we have controller manager there.

### Source 1098: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E90
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So let's see, let's just grab for XXX cause that's what we saw.

### Source 1099: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E91
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: And here we have it specified.

### Source 1100: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E92
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So the kube config file is configured to this location but let's see where the actual kube config file is, right?

### Source 1101: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E93
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So the actual kube config file for the controller manager is at atckubernetescontrollermanager.com.

### Source 1102: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E94
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: Let's just verify the contents of that file, let's do controller manager and we see that this is indeed a keep config file.

### Source 1103: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E95
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: Okay so that's the problem.

### Source 1104: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E96
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So we're going to edit the controller manager manifest file to fix that issue.

### Source 1105: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E97
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So we're going to remove this XXXX that is not required.

### Source 1106: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E98
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: We're gonna save that and we'll check the pod system.

### Source 1107: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E99
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: It's in pending state.

### Source 1108: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E100
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So we're going to watch that and we'll give you some time for the kube controller manager to be ready.

### Source 1109: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E101
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: Okay, so it's now in a running state and it's also ready.

### Source 1110: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E102
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So let's take a look at the pods.

### Source 1111: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E103
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: And we see that there are now two pods indeed.

### Source 1112: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E104
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: Let's take a look at the deployments and we see that there are two deployments.

### Source 1113: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E105
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: Okay, let's check the status.

### Source 1114: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E106
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: Okay, so we're breaking something now.

### Source 1115: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E107
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: Okay, so something is wrong with scaling again, we just tried scaling the deployment to three replicas, but it's not happening.

### Source 1116: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E108
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So let's take a look at that.

### Source 1117: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E109
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: Let's do a get pods.

### Source 1118: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E110
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: It's only two, let's do a get deployment.

### Source 1119: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E111
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: And it's two of three, so it looks like it's gone to three.

### Source 1120: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E112
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So let's check, let's look at the deployment.

### Source 1121: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E113
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: And we see that here we have scale of the replica set to one, then two, which we did earlier but it has not been scaled up to three.

### Source 1122: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E114
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So in the previous one we have learned that if the scaling up isn't happening, if the changes that we have applied on the deployment aren't, isn't going into effect then the culprit is usually the controller manager because it's the controller manager that is responsible for this.

### Source 1123: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E115
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So let's take a look at the controller manager again.

### Source 1124: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E116
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: Okay, so we're going to look at the logs of this pod controller manager.

### Source 1125: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E117
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So we're gonna do a kubectl logs, oh this is the control plane controller manager the kube system name space, and we see that it says unable to load client ca file.

### Source 1126: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E118
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So the ATC Kubernetes PTICS cert is not available.

### Source 1127: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E119
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So let's try and find this file locally and we see that we do have this file locally.

### Source 1128: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E120
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So yes, this file seems to be here but it says it's not able to load it, there's no such file or directory within the kube controller manager.

### Source 1129: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E121
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So we know that the way that the cube control manager or any other control plane component is set up is that the certificate files are on the control plane on the host.

### Source 1130: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E122
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: And then we use volumes to mount these directories within the same directory within the controller manager, right?

### Source 1131: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E123
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So that's set up in the manifest file.

### Source 1132: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E124
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So let's take a look at the manifest file and we're gonna look at your controller manager.

### Source 1133: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E125
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: And we see that all of these all of these that are configured here so ATC Kubernetes, ATC Kubernetes PKI these are all in fact on the host, but they're mapped as a volume through to these containers.

### Source 1134: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E126
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: And the way that's done is through volume mounts.

### Source 1135: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E127
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So we look at volume mounts here and we can see there are multiple volume mounts.

### Source 1136: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E128
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So you have the CSSL certs, the CS certs but what we want is the coordinate PKI volume.

### Source 1137: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E129
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: This is what we are concerned about because this is what it claims that is not available.

### Source 1138: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E130
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So here the mounting looks good but the volume that is mounted is called K eight certs.

### Source 1139: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E131
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So let's take a look at the K eight certs volume.

### Source 1140: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E132
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So these are the volumes that are configured here.

### Source 1141: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E133
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: And here we have the K eight certs volume and this is the section for that.

### Source 1142: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E134
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: And within this we have the path which is given at the top.

### Source 1143: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E135
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: And here you can see that there's an incorrect path given.

### Source 1144: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E136
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So it says wrong PKI directory.

### Source 1145: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E137
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: So we're gonna have to get rid of that and add the right PKI directory which is just PKI and just going to save that.

### Source 1146: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E138
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: Let's take a look at the pod status now.

### Source 1147: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E139
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: Okay, it seems to be in a running state and so let's watch it and wait until it is back up and running.

### Source 1148: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E140
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: Okay, so it's now in a running state.

### Source 1149: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E141
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: Let's take a look at the status of pods.

### Source 1150: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E142
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: And we see that we have three pods indeed.

### Source 1151: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E143
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: And if we take a look at the status of the deployment we see that we have three out of three ready.

### Source 1152: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/291_Lab Solution - Control Plane Failure _ (Optional).extraction.md::E144
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 291_Lab Solution - Control Plane Failure _ (Optional).txt
- Evidence: Okay, So that's the end of this lab.

### Source 1153: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/292_Worker Node Failure.extraction.md::E5
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 292_Worker Node Failure.txt
- Evidence: Describe node command.

### Source 1154: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E8
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Evidence: Let's do a describe node, node zero one.

### Source 1155: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E16
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Evidence: And the kubelet is what helps in communication between a worker node and the master or the control plane node.

### Source 1156: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E23
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Evidence: Let's go back to the control plane and let's do a quick kubelet get node.

### Source 1157: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E72
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Evidence: Let's go back, let's go back to the control plane node.

### Source 1158: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E82
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Evidence: So here you can see unable to register node and you can see the control plane and dial TCP 10 54, 132, 6553 connection refused.

### Source 1159: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E85
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Evidence: And this is basically for the control plane that we have.

### Source 1160: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E86
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Evidence: And it looks like this port number is incorrect because we know that the control plane port number is 6443 and not 6553.

### Source 1161: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E91
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Evidence: So here if you look at this, you see that right here the control plane port number is incorrect.

### Source 1162: certified-kubernetes-administrator-with-practice-tests/14_Troubleshooting/294_Lab Solution - Worker Node Failure _ (Optional).extraction.md::E100
- Source: certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting / 294_Lab Solution - Worker Node Failure _ (Optional).txt
- Evidence: So when it comes to troubleshooting worker nodes always first check the status from here, from the control plane.

### Source 1163: certified-kubernetes-administrator-with-practice-tests/15_Other Topics/299_JSON Path in Kubernetes.extraction.md::E18
- Source: certified-kubernetes-administrator-with-practice-tests / 15_Other Topics / 299_JSON Path in Kubernetes.txt
- Evidence: You will want to view specific fields of all resources, query data about the resources based on different criteria, etc..

### Source 1164: certified-kubernetes-administrator-with-practice-tests/15_Other Topics/299_JSON Path in Kubernetes.extraction.md::E19
- Source: certified-kubernetes-administrator-with-practice-tests / 15_Other Topics / 299_JSON Path in Kubernetes.txt
- Evidence: Viewing such information by going through thousands of these resources is an overwhelming task, which is why kube control supports a JSON path option that makes filtering data across large datasets using complex criteria and easy task.

### Source 1165: certified-kubernetes-administrator-with-practice-tests/15_Other Topics/299_JSON Path in Kubernetes.extraction.md::E31
- Source: certified-kubernetes-administrator-with-practice-tests / 15_Other Topics / 299_JSON Path in Kubernetes.txt
- Evidence: Well, you can see them if you run the cube control describe command.

### Source 1166: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E76
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Evidence: Install this cri-docker as packaged here, which is located in /root.

### Source 1167: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E83
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Evidence: So we have to install that package and ensure that the cri-docker service is running and enable to start on boot.

### Source 1168: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E86
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Evidence: And after it's installed, we have to now start the cri-docker service.

### Source 1169: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E87
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Evidence: So I do systemctl start, cri-docker.

### Source 1170: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E93
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Evidence: And if you wanna check if it truly is enabled, you could do systemctl is -enabled cri-docker and we can see that it's enabled.

### Source 1171: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E96
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Evidence: So for question four it says, on the control plane node, identify all the CRDs related to the Vertical Pod Autoscaler and save their names into a file in /root /vpa -: crds.txt.

### Source 1172: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E119
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Evidence: So now if I do kubectl get service, we have the messaging service and if I do kubectl describe, and actually I'm gonna do kubectl get pod -o wide so we can see the IP address of the pod.

### Source 1173: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E120
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Evidence: And then if I do a kubectl, describe service, messaging-service, right?

### Source 1174: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E138
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Evidence: We'll do describe pod orange and let's just start at the top and just work our way down.

### Source 1175: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/304_Solution - Mock Exam -1 (Optional).extraction.md::E187
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 304_Solution - Mock Exam -1 (Optional).txt
- Evidence: And then if I do kubectl describe service hr-web-app-service, we should have two entries because there's two pods in this case.

### Source 1176: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E3
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Evidence: Now in question one, it says that we need to solve this question on cluster one control plane.

### Source 1177: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E38
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Evidence: It's once again going to be on the cluster one control plane which we're already at.

### Source 1178: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E306
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Evidence: And more importantly if I do a describe actually instead of describe I do to get CSR John developer and then we'll just do dash o YAML.

### Source 1179: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E415
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Evidence: So if I do kubectl get service kubectl describe service.

### Source 1180: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E449
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Evidence: So for question seven it says that you need to create a static pad on cluster one node one called nginx dash critical with the image nginx.

### Source 1181: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E454
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Evidence: So first of all I'm going to do kubectl run and it says it should be called nginx critical.

### Source 1182: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E457
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Evidence: Critical engine x dash critical.

### Source 1183: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E484
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Evidence: So now if I exit out of here and go back to my control plane node, I'll do a kubectl get pod.

### Source 1184: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E486
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Evidence: And you can see nginx critical.

### Source 1185: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/306_Mock Exam - 2 - Solution _ (Optional).extraction.md::E521
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 306_Mock Exam - 2 - Solution _ (Optional).txt
- Evidence: And let's just do a describe just to see what it shows.

### Source 1186: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E2
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: Now for question one, you can see that it says that you are an administrator preparing your environment to deploy a Kubernetes cluster using kubeadm.

### Source 1187: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E6
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: To do this, what I always recommend is remembering that since we are in the process of creating a new cluster, using kubeadm, most likely to figure out where we would get the information to do this inside the documentation, which remember, you have the documentation available for you during the exam.

### Source 1188: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E8
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: Let's go ahead and search kubeadm, and there's going to be a guide on how to create a cluster with kubeadm.

### Source 1189: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E10
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: So to get there you go, under Production environment, installing Kubernetes deployment tools, boots driving a cluster, and then creating a cluster with kubeadm.

### Source 1190: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E54
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: I'll do kubectl, describe clusterrole pvviewer-role.

### Source 1191: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E65
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: And so now if I do kubectl, describe clusterrolebinding, we should see that it's gonna bind the pvviewer service account to the role called pvviewer-role.

### Source 1192: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E81
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: And we'll do a describe.

### Source 1193: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E111
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: And so we've now met those three criteria.

### Source 1194: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E128
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: And we'll do a describe.

### Source 1195: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E157
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: If we wanna update the the description, we can do that.

### Source 1196: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E233
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: And so now if I do kubectl describe node node1 and then grep for taint, we should see that it has taint now.

### Source 1197: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E253
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: And so now if I do a show, sorry, kubectl get pod and we do -o wide to see what node they're assigned to, we could see that dev-redis did not get assigned to node1, it went to the control plane node and we could see prod-redis was allowed to be scheduled to node1 because we assigned the toleration to that pod.

### Source 1198: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E330
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: So what I like to do is if there's an issue with the deployment, I'm gonna start by doing a kubectl describe deployment, and we're gonna take a look at the deployment.

### Source 1199: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E340
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: Now do a kubectl describe replica set.

### Source 1200: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E347
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: Could be a deployment controller, it could be an issue with the API server, could be a variety of different things, but always look at the control plane because that's usually what's limiting us from making these changes.

### Source 1201: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E348
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: So I'm gonna do a kubectl get pod, and we're gonna look at the kube-system namespace where all of the control plane components are.

### Source 1202: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E353
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: And remember all of the control plane components, they're going to be static pods.

### Source 1203: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E412
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: And if we want we can do a describe hpa.

### Source 1204: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E473
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: So to get the pod CIDR, you could do a kubectl get node, and what we'll do is I'll just grab the control plane node in this case and I'm just gonna do a -o yaml and I'm just gonna pipe it to more.

### Source 1205: certified-kubernetes-administrator-with-practice-tests/17_Mock Exams/308_Mock Exam - 3 - Solution _ (Optional).extraction.md::E480
- Source: certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams / 308_Mock Exam - 3 - Solution _ (Optional).txt
- Evidence: So I could say grab items, grab the first one, which is gonna be the control plane node.

### Source 1206: certified-kubernetes-administrator-with-practice-tests/18_Bonus Section/312_Conclusion.extraction.md::E14
- Source: certified-kubernetes-administrator-with-practice-tests / 18_Bonus Section / 312_Conclusion.txt
- Evidence: And as this requires a larger lab infrastructure to host, this is only available on KodeKloud and requires a KodeKloud paid subscription.

### Source 1207: certified-kubernetes-administrator-with-practice-tests/18_Bonus Section/312_Conclusion.extraction.md::E18
- Source: certified-kubernetes-administrator-with-practice-tests / 18_Bonus Section / 312_Conclusion.txt
- Evidence: All of these are exclusively available on KodeKloud, so it requires a KodeKloud subscription.

### Source 1208: certified-kubernetes-administrator-with-practice-tests/18_Bonus Section/312_Conclusion.extraction.md::E19
- Source: certified-kubernetes-administrator-with-practice-tests / 18_Bonus Section / 312_Conclusion.txt
- Evidence: But don't worry, use the coupon code UDEMY10 to get a special extra discount where you purchase your subscription.

### Source 1209: certified-kubernetes-administrator-with-practice-tests/18_Bonus Section/312_Conclusion.extraction.md::E28
- Source: certified-kubernetes-administrator-with-practice-tests / 18_Bonus Section / 312_Conclusion.txt
- Evidence: So once again, use that coupon code UDEMY10 to get a special extra discount when you purchase your KodeKloud subscription.

### Source 1210: certified-kubernetes-administrator-with-practice-tests/18_Bonus Section/313_What's Next_.extraction.md::E34
- Source: certified-kubernetes-administrator-with-practice-tests / 18_Bonus Section / 313_What's Next_.txt
- Evidence: But if you want to access any of these control planes specifically, you'll have to make use of the ssh command.

### Source 1211: certified-kubernetes-administrator-with-practice-tests/18_Bonus Section/313_What's Next_.extraction.md::E36
- Source: certified-kubernetes-administrator-with-practice-tests / 18_Bonus Section / 313_What's Next_.txt
- Evidence: And if I run the same command as before, you'll see that this is a single-node cluster with just one control plane.

### Source 1212: certified-kubernetes-application-developer/01_Introduction/004_Certification Details.extraction.md::E16
- Source: certified-kubernetes-application-developer / 01_Introduction / 004_Certification Details.txt
- Evidence: All of these are described in detail in the Candidate Handbook available on the certification website.

### Source 1213: certified-kubernetes-application-developer/02_Core Concepts/007_Recap - Kubernetes Architecture.extraction.md::E46
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 007_Recap - Kubernetes Architecture.txt
- Evidence: There are other container runtime alternatives available, such as rocket or Cri-o.

### Source 1214: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E1
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So you're going to come across Docker and container D many times going forward.

### Source 1215: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E2
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So when you read older blogs or documentation pages, you'll see Docker mentioned along with Kubernetes.

### Source 1216: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E3
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And when you read newer blogs you will see container D, and you'll wonder what the difference is between the two.

### Source 1217: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E4
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And there are a few CLI tools like Ktor, cry control or Node Control.

### Source 1218: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E5
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And you'll wonder what are these CLI tools and which one should you be using?

### Source 1219: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E6
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So that's what I'm going to explain in this video.

### Source 1220: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E7
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So let's go back in time to the beginning of the container era.

### Source 1221: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E8
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And in the beginning there was just Docker and there were other tools like rocket.

### Source 1222: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E9
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: But Dockers user experience made working with containers super simple.

### Source 1223: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E10
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And hence Docker became the most dominant container tool.

### Source 1224: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E11
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And then came Kubernetes to orchestrate Docker.

### Source 1225: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E12
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So Kubernetes was built to orchestrate Docker specifically in the beginning.

### Source 1226: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E13
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So Docker and Kubernetes were tightly coupled and back then Kubernetes only worked with Docker and didn't support any other container solutions.

### Source 1227: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E14
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And then Kubernetes grew in popularity as a container orchestrator.

### Source 1228: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E15
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And now other container runtimes like rocket wanted in Kubernetes.

### Source 1229: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E16
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: Users needed it to work with container runtimes that are other than just Docker.

### Source 1230: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E17
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And so Kubernetes introduced an interface called Container Runtime Interface or Cry.

### Source 1231: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E18
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So cry allowed any vendor to work as a container runtime for Kubernetes, as long as they adhere to the OCI standards.

### Source 1232: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E19
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So OCI stands for Open Container Initiative, and it consists of an image spec and a runtime spec.

### Source 1233: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E20
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: Image spec means the specifications on how an image should be built.

### Source 1234: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E21
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So that's what it defined.

### Source 1235: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E22
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: An image spec defined the specifications on how an image should be built, and the runtime spec defined the standards on how any container runtime should be developed.

### Source 1236: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E23
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So keeping these standards in mind, Anyone can build a container runtime that can be used by anybody to work with Kubernetes.

### Source 1237: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E24
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So that was the idea.

### Source 1238: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E25
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So rocket and other container runtimes that adhere to the OCI standards were now supported as container runtimes for Kubernetes via the CRI.

### Source 1239: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E26
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: However, Docker wasn't built to support the CRI standards because remember, Docker was built way before CRI was introduced and Docker still was the dominant container tool used by most.

### Source 1240: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E27
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So Kubernetes had to continue to support Docker as well.

### Source 1241: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E28
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And so Kubernetes introduced what is known as Docker shim, which was a hacky but temporary way to continue to support Docker outside of the container runtime interface.

### Source 1242: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E29
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: While most other container runtimes worked through the CRI, Docker continued to work without it.

### Source 1243: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E30
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: Now you see Docker isn't just a container runtime alone.

### Source 1244: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E31
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: Docker consists of multiple tools that are put together, for example Docker CLI, the Docker API, the build tools that help in building images.

### Source 1245: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E32
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: There was support for volumes or security.

### Source 1246: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E33
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And finally also the container runtime called run.

### Source 1247: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E34
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: See the daemon that managed run C.

### Source 1248: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E35
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And that's that was called as container D.

### Source 1249: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E36
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So container D is CRE compatible and can work directly with Kubernetes as all other runtimes.

### Source 1250: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E37
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So container D can be used as a runtime on its own separate from Docker.

### Source 1251: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E38
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So now you have container D as a separate runtime and Docker separately.

### Source 1252: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E39
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So Kubernetes continued to maintain support for Docker Engine directly.

### Source 1253: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E40
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: However, having to maintain the Docker shim was an unnecessary effort and added complications, so it was decided in version 1.2 for release of Kubernetes to remove Dockershim completely, and so support for Docker was removed.

### Source 1254: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E41
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: But you see all the images that were built before Docker was removed.

### Source 1255: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E42
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So all the Docker images continue to work because Docker followed the image spec from the OCI standard.

### Source 1256: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E43
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So all the images built by Docker follow the standard.

### Source 1257: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E44
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So they continue to work with Containerd.

### Source 1258: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E45
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: But Docker itself was removed as a supported runtime from Kubernetes.

### Source 1259: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E46
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So that's the whole story.

### Source 1260: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E47
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And now let's look into container D more specifically.

### Source 1261: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E48
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So container D although is part of Docker, is a separate project on its own now and is a member of CNCF with the graduated status.

### Source 1262: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E49
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So you can now install container D on its own without having to install Docker itself.

### Source 1263: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E50
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So if you don't really need Dockers other features, you could ideally just install container D alone.

### Source 1264: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E51
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So typically we ran containers using the docker run command when we had Docker.

### Source 1265: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E52
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And if Docker isn't installed then how do you run containers with just To container D.

### Source 1266: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E53
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: Now once you install container D it comes with a command line tool called Ctor.

### Source 1267: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E54
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And this tool is solely made for debugging container D and is not very user friendly as it only supports a limited set of features.

### Source 1268: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E55
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And this is what you can see in the documentation pages for this particular tool.

### Source 1269: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E56
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So for the other than the limited set of features that it provides, anything any other way that you want to interact with container D, you'll have to rely on making API calls directly, which is not the the most user friendly way for us to operate.

### Source 1270: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E57
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So just to give you an idea, this can be the Ctor command can be used to perform basic container related activities such as pull images.

### Source 1271: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E58
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: For example, to pull uh, redis image, you would run the ctor images pull command followed by the address of the image.

### Source 1272: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E59
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And to run a container we use the CTL run command and specify the image address.

### Source 1273: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E60
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: But as I mentioned, this tool is solely made for debugging container ID and is not very user friendly and not to be used for running or managing containers on a production environment, so a better alternative recommended is the nerd control tool or nerd CTL tool.

### Source 1274: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E61
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So the nerd control tool is a command line tool that's very similar to Docker.

### Source 1275: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E62
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So it's like Docker like CLI for container D.

### Source 1276: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E63
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: It supports all or most of the options that Docker supports.

### Source 1277: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E64
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And apart from that it has the added benefit that it can give us access to the newest features implemented into container D.

### Source 1278: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E65
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: For example, we can work with the encrypted container images or other new feature that will eventually be implemented into the Docker commands in the future.

### Source 1279: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E66
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: It also supports lazy pulling of images, P2P image distribution, image signing and verifying and namespaces in Kubernetes, which is not available in Docker.

### Source 1280: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E67
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So the nerd control tool works very similar to Docker CLI.

### Source 1281: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E68
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So instead of Docker, you would ideally simply have to replace it with nerd control.

### Source 1282: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E69
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So you can run almost all Docker commands that interact with containers like this.

### Source 1283: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E70
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So some examples are instead of running the docker run command to create a container to run a container, you could just use the inet control run command.

### Source 1284: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E71
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And similarly, let's say you want to use some options for port mappings or exposing ports with the Dash P option for the docker run command, you could do the same with node control.

### Source 1285: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E72
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: Simply replace Docker with node control.

### Source 1286: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E73
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So that's pretty easy and straightforward.

### Source 1287: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E74
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So now that we have talked about Ktor and the node control tool, it's important to talk about another command line utility known as CRI, CTL or CRI control.

### Source 1288: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E75
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So earlier we talked about the container Runtime interface or CRI which is a single interface used to connect CRI compatible container runtimes, the container D rocket and others.

### Source 1289: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E76
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: The CRI control is a command line utility that is used to interact with the CRI compatible container runtime.

### Source 1290: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E77
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So this is kind of an interaction from the Kubernetes perspective.

### Source 1291: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E78
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So this tool is maintained by developed and maintained by the Kubernetes community.

### Source 1292: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E79
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And this is this tool works across all the different container runtimes as opposed to earlier.

### Source 1293: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E80
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: You had the CTR and the node control tool that were built by the container community specifically for container D.

### Source 1294: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E81
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: This particular tool is from the Kubernetes perspective that works across different container runtimes.

### Source 1295: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E82
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So it must be installed separately.

### Source 1296: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E83
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And it is used to inspect and debug container runtime.

### Source 1297: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E84
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So this again is not ideally used to create containers unlike Docker or the node control utility.

### Source 1298: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E85
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: This is again a debugging tool.

### Source 1299: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E86
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: You can technically create containers with the CRI control utility, but it's not easy.

### Source 1300: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E87
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: It's only to be used for some special debugging purposes.

### Source 1301: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E88
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And the remember that it works along with the Kubelet.

### Source 1302: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E89
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So we know that the Kubelet is responsible for ensuring that the specific number of containers or pods are available on on node at a time.

### Source 1303: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E90
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So if you go through the CRI control utility and try and create containers with it, then eventually Kubelet is going to delete them because the Kubelet is unaware of some of those containers are pods that are created outside of its knowledge, so anything that it sees is going to go and delete it.

### Source 1304: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E91
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So because of those things, remember that the cry control utility is only used for debugging purposes and getting into containers and all of that.

### Source 1305: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E92
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So let's look at some of the command line examples.

### Source 1306: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E93
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So you simply run the write controls Uri CTL command for this.

### Source 1307: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E94
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And this can be used to perform basic container related activities such as pull images or list existing images.

### Source 1308: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E95
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: List containers very similar to the docker command where you use the PS command in Docker.

### Source 1309: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E96
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: You would run the PS command.

### Source 1310: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E97
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: Here you would run the cry control PS command and to run a command inside a container in Docker.

### Source 1311: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E98
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: Remember we use the exact command and it's the same here along with the same options such as the dash I and dash t.

### Source 1312: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E99
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And then you specify the container id and then the command that needs to be run to view the logs.

### Source 1313: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E100
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: Again use the cry control log command very similar to docker command.

### Source 1314: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E101
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And one major difference is that the cry.

### Source 1315: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E102
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: Control command is also aware of pods, so you can list pods by running the cry control pods command.

### Source 1316: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E103
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So this wasn't something that Docker was aware of.

### Source 1317: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E104
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So while working with Kubernetes in the past, we used Docker commands a lot to troubleshoot containers and view logs, especially on the worker nodes.

### Source 1318: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E105
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: Now you're going to use the cry control command to do so.

### Source 1319: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E106
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: The syntax is a lot similar.

### Source 1320: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E107
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So it shouldn't be shouldn't be really hard.

### Source 1321: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E108
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So here's a chart that lists the comparison between Docker and the cry control command line tool.

### Source 1322: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E109
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So as you can see, a lot of commands such as attach exec images, info, inspect logs, PS stats, version, etc. work exactly the same way and some of the commands to create, remove and start and stop images works similarly too.

### Source 1323: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E110
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So a full list of differences can be found in the link given below.

### Source 1324: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E111
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: Since, as I mentioned, cry control can be used to connect to any cry compatible runtime.

### Source 1325: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E112
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: Remember to set the right endpoint if you have multiple container runtimes configured, or if you want cry control to interact with the specific runtime.

### Source 1326: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E113
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: For example, if you haven't configured anything by default is going to connect to these sockets in this particular order.

### Source 1327: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E114
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So it's going to try and connect to Docker shim first, and then Containerd and then cri-o.

### Source 1328: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E115
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And then you have the docker d that's the order that it follows.

### Source 1329: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E116
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: But if you want to override that and set a specific endpoint, you use the runtime endpoint option with the right control command line.

### Source 1330: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E117
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: Or you could use the container runtime endpoint environment variable.

### Source 1331: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E118
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: Set the environment variable to the right endpoint.

### Source 1332: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E119
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So to summarize, we have the Ctor command line utility that comes with container D and works with container D, which is used for debugging purposes only and has a very limited set of features.

### Source 1333: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E120
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So ideally you wouldn't be using this at all.

### Source 1334: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E121
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So you can ignore this.

### Source 1335: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E122
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: Then we have the nerd control CLI which is again from the container D community.

### Source 1336: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E123
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: But this is a docker like CLI for container D, used for general purpose to create containers and supports the same or more features than docker CLI.

### Source 1337: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E124
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So this is something that I think we'll be using a lot more going forward.

### Source 1338: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E125
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: And then we have the cry control utility which is from the Kubernetes community.

### Source 1339: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E126
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: The mainly used to interact with Cry compatible runtime.

### Source 1340: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E127
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So it's not just for container D.

### Source 1341: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E128
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: This can be used for all Cry supported runtimes.

### Source 1342: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E129
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: Again this is mainly for to be used for debugging purposes.

### Source 1343: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E130
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So if you look at the comparisons here you can see that Ktor and cry control are used mainly for debugging purposes, whereas the nerve control is used for general purpose.

### Source 1344: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E131
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: The ktor and nerve control are from the container community and works with container D, whereas cry control is from the Kubernetes community and works across all Cry compatible runtimes.

### Source 1345: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E132
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So our labs originally had Docker installed on all the nodes, so we used the Docker commands to troubleshoot.

### Source 1346: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E133
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: But now it's all container D.

### Source 1347: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E134
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: So remember to use the the cry control command instead to troubleshoot.

### Source 1348: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E135
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: That's all for now.

### Source 1349: certified-kubernetes-application-developer/02_Core Concepts/008_Docker-vs-ContainerD.extraction.md::E136
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 008_Docker-vs-ContainerD.txt
- Evidence: Thank you for listening.

### Source 1350: certified-kubernetes-application-developer/02_Core Concepts/009_A note on Docker deprecation.extraction.md::E6
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 009_A note on Docker deprecation.txt
- Evidence: So container D is the CRI compatible and can.

### Source 1351: certified-kubernetes-application-developer/02_Core Concepts/010_Recap - Pods.extraction.md::E41
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 010_Recap - Pods.txt
- Evidence: Let's assume we were developing a process or a script to deploy our application on a Docker host.

### Source 1352: certified-kubernetes-application-developer/02_Core Concepts/012_Recap - Pods with YAML.extraction.md::E62
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 012_Recap - Pods with YAML.txt
- Evidence: To see detailed information about the pod, run the kubectl describe pod command.

### Source 1353: certified-kubernetes-application-developer/02_Core Concepts/015_Introduction to Kubernetes Practice Test.extraction.md::E10
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 015_Introduction to Kubernetes Practice Test.txt
- Evidence: This could be a Linux terminal if you are learning Linux shell scripting or git, and this could be a Docker host if you are learning Docker or Kubernetes control plane.

### Source 1354: certified-kubernetes-application-developer/02_Core Concepts/019_Solution - Pods (optional).extraction.md::E34
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 019_Solution - Pods (optional).txt
- Evidence: And we know that to look at it in detail, we've got to run the Kubectl describe that.

### Source 1355: certified-kubernetes-application-developer/02_Core Concepts/019_Solution - Pods (optional).extraction.md::E44
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 019_Solution - Pods (optional).txt
- Evidence: So one way to do this is we've already run the Kubectl Describe Pod command, and we can see that this is on node Control Plane and we could actually run the the Describe command against each pod.

### Source 1356: certified-kubernetes-application-developer/02_Core Concepts/019_Solution - Pods (optional).extraction.md::E47
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 019_Solution - Pods (optional).txt
- Evidence: And here you get to see the node and it says Control Plane.

### Source 1357: certified-kubernetes-application-developer/02_Core Concepts/019_Solution - Pods (optional).extraction.md::E48
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 019_Solution - Pods (optional).txt
- Evidence: So all of the new pods are created on the Control Plane node, select Control Plane.

### Source 1358: certified-kubernetes-application-developer/02_Core Concepts/019_Solution - Pods (optional).extraction.md::E54
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 019_Solution - Pods (optional).txt
- Evidence: So that's one way to figure that out or will always run the Describe command to see that in detail.

### Source 1359: certified-kubernetes-application-developer/02_Core Concepts/023_Solution - ReplicaSets (optional).extraction.md::E14
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 023_Solution - ReplicaSets (optional).txt
- Evidence: And for that we know we have to run the kubectl describe command.

### Source 1360: certified-kubernetes-application-developer/02_Core Concepts/023_Solution - ReplicaSets (optional).extraction.md::E15
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 023_Solution - ReplicaSets (optional).txt
- Evidence: And we're gonna run describe ReplicaSet and then new ReplicaSet.

### Source 1361: certified-kubernetes-application-developer/02_Core Concepts/023_Solution - ReplicaSets (optional).extraction.md::E30
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 023_Solution - ReplicaSets (optional).txt
- Evidence: So let's run the kubectl describe command and look at any one of the pods in a bit more detail.

### Source 1362: certified-kubernetes-application-developer/02_Core Concepts/026_Solution - Deployments (optional).extraction.md::E30
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 026_Solution - Deployments (optional).txt
- Evidence: Describe pod front end deployment.

### Source 1363: certified-kubernetes-application-developer/02_Core Concepts/026_Solution - Deployments (optional).extraction.md::E35
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 026_Solution - Deployments (optional).txt
- Evidence: The get commands and the describe commands.

### Source 1364: certified-kubernetes-application-developer/02_Core Concepts/033_Solution - Services (optional).extraction.md::E15
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 033_Solution - Services (optional).txt
- Evidence: So, we're gonna do "kubectl describe" command, and we're gonna describe the service named Kubernetes.

### Source 1365: certified-kubernetes-application-developer/02_Core Concepts/033_Solution - Services (optional).extraction.md::E46
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 033_Solution - Services (optional).txt
- Evidence: So, and that's when, when we look at the the output of the "kubectl describe" command, that we can identify the additional endpoints, apart from what we thought we had configured.

### Source 1366: certified-kubernetes-application-developer/02_Core Concepts/033_Solution - Services (optional).extraction.md::E47
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 033_Solution - Services (optional).txt
- Evidence: Right, so we're gonna see, when you look at the "kubectl describe" command for the service, we're gonna see that there are four endpoints.

### Source 1367: certified-kubernetes-application-developer/02_Core Concepts/033_Solution - Services (optional).extraction.md::E54
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 033_Solution - Services (optional).txt
- Evidence: And, that's when you look at the description of the service and you realize that the endpoints are zero.

### Source 1368: certified-kubernetes-application-developer/02_Core Concepts/036_Kubectl Explain Command.extraction.md::E10
- Source: certified-kubernetes-application-developer / 02_Core Concepts / 036_Kubectl Explain Command.txt
- Evidence: So the API version is string and also the description of what it does.

### Source 1369: certified-kubernetes-application-developer/03_Configuration/043_Commands and Arguments in Docker.extraction.md::E12
- Source: certified-kubernetes-application-developer / 03_Configuration / 043_Commands and Arguments in Docker.txt
- Evidence: Unlike virtual machines, containers are not meant to host an operating system.

### Source 1370: certified-kubernetes-application-developer/03_Configuration/049_ConfigMaps.extraction.md::E40
- Source: certified-kubernetes-application-developer / 03_Configuration / 049_ConfigMaps.txt
- Evidence: The describe config maps command lists the configuration data as well under the data section.

### Source 1371: certified-kubernetes-application-developer/03_Configuration/051_Solution_ ConfigMaps (Optional).extraction.md::E7
- Source: certified-kubernetes-application-developer / 03_Configuration / 051_Solution_ ConfigMaps (Optional).txt
- Evidence: And so, now we can do a kubectl describe pod and then just grab the pod name here.

### Source 1372: certified-kubernetes-application-developer/03_Configuration/051_Solution_ ConfigMaps (Optional).extraction.md::E57
- Source: certified-kubernetes-application-developer / 03_Configuration / 051_Solution_ ConfigMaps (Optional).txt
- Evidence: So we'll do kubectl describe.

### Source 1373: certified-kubernetes-application-developer/03_Configuration/052_Secrets.extraction.md::E45
- Source: certified-kubernetes-application-developer / 03_Configuration / 052_Secrets.txt
- Evidence: Describe secret command.

### Source 1374: certified-kubernetes-application-developer/03_Configuration/056_Solution - Secrets (Optional).extraction.md::E6
- Source: certified-kubernetes-application-developer / 03_Configuration / 056_Solution - Secrets (Optional).txt
- Evidence: So we're going to do a kubectl describe secret and we see additional details.

### Source 1375: certified-kubernetes-application-developer/03_Configuration/056_Solution - Secrets (Optional).extraction.md::E59
- Source: certified-kubernetes-application-developer / 03_Configuration / 056_Solution - Secrets (Optional).txt
- Evidence: Describe DB secret, describe secret, then DB secret.

### Source 1376: certified-kubernetes-application-developer/03_Configuration/057_Demo_ Encrypting Secret Data at Rest.extraction.md::E18
- Source: certified-kubernetes-application-developer / 03_Configuration / 057_Demo_ Encrypting Secret Data at Rest.txt
- Evidence: And if I do a describe (computer keyboard clicks) secret, I get to see that its the, the secret name and the data.

### Source 1377: certified-kubernetes-application-developer/03_Configuration/057_Demo_ Encrypting Secret Data at Rest.extraction.md::E54
- Source: certified-kubernetes-application-developer / 03_Configuration / 057_Demo_ Encrypting Secret Data at Rest.txt
- Evidence: Or if you're, you wanna run it locally from your control plane node you could use the ETCD cuddle client.

### Source 1378: certified-kubernetes-application-developer/03_Configuration/057_Demo_ Encrypting Secret Data at Rest.extraction.md::E62
- Source: certified-kubernetes-application-developer / 03_Configuration / 057_Demo_ Encrypting Secret Data at Rest.txt
- Evidence: So if I do a get pods dash cube system I have the ETCD control plane here, right?

### Source 1379: certified-kubernetes-application-developer/03_Configuration/058_Pre-requisite - Security in Docker.extraction.md::E7
- Source: certified-kubernetes-application-developer / 03_Configuration / 058_Pre-requisite - Security in Docker.txt
- Evidence: We have learned that unlike virtual machines, containers are not completely isolated from their host containers, and the hosts share the same kernel.

### Source 1380: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E12
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements.txt
- Evidence: And if you look at the events using the kube control describe pod command, you will see there is an insufficient CPU.

### Source 1381: certified-kubernetes-application-developer/03_Configuration/062_Resource Requirements.extraction.md::E57
- Source: certified-kubernetes-application-developer / 03_Configuration / 062_Resource Requirements.txt
- Evidence: The pod will be terminated and you'll see that the pod terminated with an error in the logs or in the output of the describe command when you run it.

### Source 1382: certified-kubernetes-application-developer/03_Configuration/064_Solution_ Resource Requirements.extraction.md::E3
- Source: certified-kubernetes-application-developer / 03_Configuration / 064_Solution_ Resource Requirements.txt
- Evidence: To get this information, we'll do a kubectl describe pod and then well grab the name of the pod, which is Rabbit.

### Source 1383: certified-kubernetes-application-developer/03_Configuration/064_Solution_ Resource Requirements.extraction.md::E14
- Source: certified-kubernetes-application-developer / 03_Configuration / 064_Solution_ Resource Requirements.txt
- Evidence: So, I'm gonna do a kubectl, describe pod Elephant.

### Source 1384: certified-kubernetes-application-developer/03_Configuration/065_Service Account.extraction.md::E27
- Source: certified-kubernetes-application-developer / 03_Configuration / 065_Service Account.txt
- Evidence: To view the token, view the secret object by running the command kubectl describe secret.

### Source 1385: certified-kubernetes-application-developer/03_Configuration/065_Service Account.extraction.md::E44
- Source: certified-kubernetes-application-developer / 03_Configuration / 065_Service Account.txt
- Evidence: However, when the pod is created, if you look at the details of the pod, by running the kubectl describe pod command, you see that a volume is automatically created from the secret named default token, which is in fact the secret containing the token for this default service account.

### Source 1386: certified-kubernetes-application-developer/03_Configuration/065_Service Account.extraction.md::E70
- Source: certified-kubernetes-application-developer / 03_Configuration / 065_Service Account.txt
- Evidence: So this excerpt from the Kubernetes Enhancement Proposal for creating bound service account tokens describes this form of JWT to be having some security and scalability related issues.

### Source 1387: certified-kubernetes-application-developer/03_Configuration/067_Solution_ Service Account.extraction.md::E4
- Source: certified-kubernetes-application-developer / 03_Configuration / 067_Solution_ Service Account.txt
- Evidence: So to get this information, we'll go to kubectl and we'll do a describe of the default service account.

### Source 1388: certified-kubernetes-application-developer/03_Configuration/067_Solution_ Service Account.extraction.md::E8
- Source: certified-kubernetes-application-developer / 03_Configuration / 067_Solution_ Service Account.txt
- Evidence: So I'll do a kubectl get deployments, and then I'll do a kubectl describe deployment web-dashboard.

### Source 1389: certified-kubernetes-application-developer/03_Configuration/067_Solution_ Service Account.extraction.md::E27
- Source: certified-kubernetes-application-developer / 03_Configuration / 067_Solution_ Service Account.txt
- Evidence: So we'll do a kubectl get pod and I'm gonna do a kubectl describe and we'll describe that pod and I forgot the word pod.

### Source 1390: certified-kubernetes-application-developer/03_Configuration/069_Taints and Tolerations.extraction.md::E75
- Source: certified-kubernetes-application-developer / 03_Configuration / 069_Taints and Tolerations.txt
- Evidence: To see this tent run a cube control, describe node command with cube Master as the node name and look for the tent section.

### Source 1391: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E2
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Evidence: So let's start with the first question, how many nodes exist on the system, including the control plane?

### Source 1392: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E3
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Evidence: So let's look at the number of nodes. and we see that there are two nodes, control plane and node 01, so the answer is two.

### Source 1393: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E6
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Evidence: So we do a kubectl describe node, node 01, and we see taints right here and we see that there are none, so there are no taints on this particular node.

### Source 1394: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E28
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Evidence: So let's see, let's do a describe pod, and the pod name.

### Source 1395: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E52
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Evidence: Now do you see any taints on control plane node?

### Source 1396: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E53
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Evidence: So let's look at the control plane node, and let's look at taints, and we see that yes, there is a taint set on the control plane node and it's set to no schedule, that's the effect.

### Source 1397: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E55
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Evidence: Okay, now remove the taint on control plane, which currently has the taint effect of no schedule.

### Source 1398: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E58
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Evidence: So this is the taint, so let's copy that, and the command to remove is the same, kubectl taint, and we just, that's by the node, that's control plane node, specify the taint that we want to remove, and at the end you've got to put a dash or a minus for it to remove that taint.

### Source 1399: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E66
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Evidence: And then we have to, let's check on what node it is placed so as you can see it's now placed on the control plane node.

### Source 1400: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E67
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Evidence: So earlier in the beginning the control plane node has a taint set on it, and then we set a taint on node 01 and then we created the mosquito pod.

### Source 1401: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E69
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Evidence: Then we created the bee pod with the toleration on node 01, so the bee pod was able to be placed on node 01, and then we removed the taint on control plane.

### Source 1402: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E70
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Evidence: And without doing anything the pod mosquito was automatically placed on control plane because it no longer has any kind of taint on it.

### Source 1403: certified-kubernetes-application-developer/03_Configuration/071_Solution - Taints and Tolerations (Optional).extraction.md::E71
- Source: certified-kubernetes-application-developer / 03_Configuration / 071_Solution - Taints and Tolerations (Optional).txt
- Evidence: So it's, the answer to this is control plane.

### Source 1404: certified-kubernetes-application-developer/03_Configuration/073_Node Affinity.extraction.md::E15
- Source: certified-kubernetes-application-developer / 03_Configuration / 073_Node Affinity.txt
- Evidence: No description needed for that.

### Source 1405: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E4
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Evidence: So let's do kubectl, describe node, node zero one and let's look at the labels.

### Source 1406: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E26
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Evidence: So we're gonna do a kubectl describe node.

### Source 1407: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E29
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Evidence: So there are no taints on node zero one and the other node, which I believe is the control plane node.

### Source 1408: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E60
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Evidence: So the next task is to create a new deployment named red with the nginx image and two replicas and ensure it gets placed on the control plane node only.

### Source 1409: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E61
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Evidence: And the recommendation is to use the label node coordinators dot io slash master which is already set on the control plane node.

### Source 1410: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E62
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Evidence: So if you look at the control plane node we see that there is this label, right?

### Source 1411: certified-kubernetes-application-developer/03_Configuration/075_Solution - Node Affinity (Optional).extraction.md::E98
- Source: certified-kubernetes-application-developer / 03_Configuration / 075_Solution - Node Affinity (Optional).txt
- Evidence: And if we look at pods now, we'll see that those the new pods are on node control plane.

### Source 1412: certified-kubernetes-application-developer/04_Multi-Container Pods/081_Multi-container Pods Design Patterns.extraction.md::E41
- Source: certified-kubernetes-application-developer / 04_Multi-Container Pods / 081_Multi-container Pods Design Patterns.txt
- Evidence: In this case, once the wait for db to start script ends, then the main container starts.

### Source 1413: certified-kubernetes-application-developer/04_Multi-Container Pods/081_Multi-container Pods Design Patterns.extraction.md::E45
- Source: certified-kubernetes-application-developer / 04_Multi-Container Pods / 081_Multi-container Pods Design Patterns.txt
- Evidence: So what happens is first the checker script runs that container, runs and ends, and it ends that run.

### Source 1414: certified-kubernetes-application-developer/04_Multi-Container Pods/085_Solution – Init Containers (Optional).extraction.md::E4
- Source: certified-kubernetes-application-developer / 04_Multi-Container Pods / 085_Solution – Init Containers (Optional).txt
- Evidence: And to see which one has an Init container, we're gonna have to do a Kubectl describe.

### Source 1415: certified-kubernetes-application-developer/04_Multi-Container Pods/085_Solution – Init Containers (Optional).extraction.md::E5
- Source: certified-kubernetes-application-developer / 04_Multi-Container Pods / 085_Solution – Init Containers (Optional).txt
- Evidence: So I'm gonna do Kubectl describe, and then pod and then this is going to describe all the pods.

### Source 1416: certified-kubernetes-application-developer/04_Multi-Container Pods/085_Solution – Init Containers (Optional).extraction.md::E27
- Source: certified-kubernetes-application-developer / 04_Multi-Container Pods / 085_Solution – Init Containers (Optional).txt
- Evidence: So I do Kubectl describe pod purple.

### Source 1417: certified-kubernetes-application-developer/04_Multi-Container Pods/085_Solution – Init Containers (Optional).extraction.md::E34
- Source: certified-kubernetes-application-developer / 04_Multi-Container Pods / 085_Solution – Init Containers (Optional).txt
- Evidence: To get the state of the pod, just take a look at the output of the described pod command, and you can see there's a status section right here and that's going to be pending.

### Source 1418: certified-kubernetes-application-developer/04_Multi-Container Pods/085_Solution – Init Containers (Optional).extraction.md::E69
- Source: certified-kubernetes-application-developer / 04_Multi-Container Pods / 085_Solution – Init Containers (Optional).txt
- Evidence: So I'm gonna do a Kubectl describe pod orange, and let's take a look at what could be going wrong.

### Source 1419: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E11
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Evidence: To find out why it's stuck in a pending state, run the kubectl describe pod command and it will tell you exactly why.

### Source 1420: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E24
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Evidence: To see the state of pod conditions, run the kubectl describe pod command and look for the conditions section.

### Source 1421: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E30
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Evidence: It could be a simple script that performs the job.

### Source 1422: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E32
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Evidence: The script may take a few milliseconds to get ready.

### Source 1423: certified-kubernetes-application-developer/05_Observability/086_Readiness and Liveness Probes.extraction.md::E53
- Source: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes.txt
- Evidence: Or you may simply execute a command within the container to run a custom script that would exit successfully if the application is ready.

### Source 1424: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E8
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Evidence: And so there's been a test script provided.

### Source 1425: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E10
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Evidence: And you can access this script by doing a ./ and then calling curl-test.sh.

### Source 1426: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E13
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Evidence: And it's telling us to go ahead and run the script again just to see if we notice anything that's been changed.

### Source 1427: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E15
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Evidence: And then if I run the same script again, which is by running ./curl-test.sh, okay, so everything looks the same.

### Source 1428: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E46
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Evidence: The next question is just telling us to run the script again.

### Source 1429: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E48
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Evidence: And we can see that the script is working.

### Source 1430: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E54
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Evidence: And then we're gonna run the script again.

### Source 1431: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E57
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Evidence: The next question provides us a script that's going to crash one of our pods so that we can take a look and see what happens when one of our pods crashes.

### Source 1432: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E58
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Evidence: So we can run the script by doing a ./crash-app.sh.

### Source 1433: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E66
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Evidence: And we saw that when we ran the script all the requests go to web app one.

### Source 1434: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E67
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Evidence: The next question is telling us to run a freeze-app.sh script, which is actually going to cause one of the pods to freeze so that we can inspect and see what happens.

### Source 1435: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E70
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Evidence: And then we're gonna run the same curl script.

### Source 1436: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E104
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Evidence: For the next question it's telling us to run the freeze script so we can freeze one of the pods and then run the curl test again to see if there's any difference in impact.

### Source 1437: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E105
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Evidence: I'm gonna run the freeze script again.

### Source 1438: certified-kubernetes-application-developer/05_Observability/089_Solution_ Readiness and Liveness Probes.extraction.md::E109
- Source: certified-kubernetes-application-developer / 05_Observability / 089_Solution_ Readiness and Liveness Probes.txt
- Evidence: And now if I run the curl script you see that there's no loss.

### Source 1439: certified-kubernetes-application-developer/05_Observability/093_Monitor and Debug Applications.extraction.md::E19
- Source: certified-kubernetes-application-developer / 05_Observability / 093_Monitor and Debug Applications.txt
- Evidence: If you're using minikube for your local cluster, run the command minikube add ons.

### Source 1440: certified-kubernetes-application-developer/05_Observability/095_Solution - Monitoring (optional).extraction.md::E32
- Source: certified-kubernetes-application-developer / 05_Observability / 095_Solution - Monitoring (optional).txt
- Evidence: So, node zero one has 57 millicores and the control plane consumes about 470 millicores.

### Source 1441: certified-kubernetes-application-developer/05_Observability/095_Solution - Monitoring (optional).extraction.md::E34
- Source: certified-kubernetes-application-developer / 05_Observability / 095_Solution - Monitoring (optional).txt
- Evidence: And of course that's because the control plane has all the control plane components running on it.

### Source 1442: certified-kubernetes-application-developer/05_Observability/095_Solution - Monitoring (optional).extraction.md::E35
- Source: certified-kubernetes-application-developer / 05_Observability / 095_Solution - Monitoring (optional).txt
- Evidence: So to answer this question the most CPU consumption is by the control plane.

### Source 1443: certified-kubernetes-application-developer/05_Observability/095_Solution - Monitoring (optional).extraction.md::E39
- Source: certified-kubernetes-application-developer / 05_Observability / 095_Solution - Monitoring (optional).txt
- Evidence: Again, we know we can see that the control plane consumes most memory.

### Source 1444: certified-kubernetes-application-developer/05_Observability/095_Solution - Monitoring (optional).extraction.md::E40
- Source: certified-kubernetes-application-developer / 05_Observability / 095_Solution - Monitoring (optional).txt
- Evidence: So, The answer to this is control plane, again.

### Source 1445: certified-kubernetes-application-developer/06_POD Design/096_Labels, Selectors and Annotations.extraction.md::E4
- Source: certified-kubernetes-application-developer / 06_POD Design / 096_Labels, Selectors and Annotations.txt
- Evidence: A user wants to be able to filter them based on different criteria, such as based on their class or kind, if they are domestic or wild, or say by their color and not just group, you want to be able to filter them based on a criteria such as all green animals or with multiple criteria such as everything green that is also a bird.

### Source 1446: certified-kubernetes-application-developer/06_POD Design/099_Rolling Updates & Rollbacks in Deployments.extraction.md::E31
- Source: certified-kubernetes-application-developer / 06_POD Design / 099_Rolling Updates & Rollbacks in Deployments.txt
- Evidence: Describe deployment command to see the detailed information regarding the deployments.

### Source 1447: certified-kubernetes-application-developer/06_POD Design/102_Solution - Rolling Updates (Optional).extraction.md::E16
- Source: certified-kubernetes-application-developer / 06_POD Design / 102_Solution - Rolling Updates (Optional).txt
- Evidence: Now run the script named "Cold Test" to send multiple requests to the web application.

### Source 1448: certified-kubernetes-application-developer/06_POD Design/102_Solution - Rolling Updates (Optional).extraction.md::E22
- Source: certified-kubernetes-application-developer / 06_POD Design / 102_Solution - Rolling Updates (Optional).txt
- Evidence: So we're gonna use this script to run tests on to kind of simulate accessing the web application by now either like multiple users, so, or, or sending multiple requests to the web application.

### Source 1449: certified-kubernetes-application-developer/06_POD Design/102_Solution - Rolling Updates (Optional).extraction.md::E61
- Source: certified-kubernetes-application-developer / 06_POD Design / 102_Solution - Rolling Updates (Optional).txt
- Evidence: Let's make sure it's updated from the describe command again.

### Source 1450: certified-kubernetes-application-developer/06_POD Design/106_Solution_ Deployment strategies.extraction.md::E5
- Source: certified-kubernetes-application-developer / 06_POD Design / 106_Solution_ Deployment strategies.txt
- Evidence: So I'm gonna do a kubectl describe frontend deployment frontend.

### Source 1451: certified-kubernetes-application-developer/06_POD Design/106_Solution_ Deployment strategies.extraction.md::E10
- Source: certified-kubernetes-application-developer / 06_POD Design / 106_Solution_ Deployment strategies.txt
- Evidence: And if you wanna just double check and verify that this is the right service, we could do a kubectl describe service, and we could just make sure that the labels or the selectors are a match up.

### Source 1452: certified-kubernetes-application-developer/06_POD Design/110_Solution - Jobs and Cronjobs (optional).extraction.md::E35
- Source: certified-kubernetes-application-developer / 06_POD Design / 110_Solution - Jobs and Cronjobs (optional).txt
- Evidence: So, far it hasn't completed, and if I do a, kubectl describe job throw-dice-job, we can see one active, zero succeeded, three failed.

### Source 1453: certified-kubernetes-application-developer/06_POD Design/110_Solution - Jobs and Cronjobs (optional).extraction.md::E56
- Source: certified-kubernetes-application-developer / 06_POD Design / 110_Solution - Jobs and Cronjobs (optional).txt
- Evidence: And then, I'll do a, kubectl apply -f, and I'm gonna do a, kubectl describe job.

### Source 1454: certified-kubernetes-application-developer/06_POD Design/110_Solution - Jobs and Cronjobs (optional).extraction.md::E71
- Source: certified-kubernetes-application-developer / 06_POD Design / 110_Solution - Jobs and Cronjobs (optional).txt
- Evidence: If we do a kubectl apply, oh, sorry, not apply, kubectl get jobs, actually, we'll do a describe job.

### Source 1455: certified-kubernetes-application-developer/07_Services & Networking/112_Developing network policies.extraction.md::E78
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 112_Developing network policies.txt
- Evidence: Traffic from sources meeting either of these criteria are allowed to pass through.

### Source 1456: certified-kubernetes-application-developer/07_Services & Networking/112_Developing network policies.extraction.md::E80
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 112_Developing network policies.txt
- Evidence: Part of it that would mean traffic from sources must meet both of these criteria to pass through.

### Source 1457: certified-kubernetes-application-developer/07_Services & Networking/114_Solution - Network Policies (optional).extraction.md::E46
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 114_Solution - Network Policies (optional).txt
- Evidence: So let's do kubectl describe net pol payroll policy.

### Source 1458: certified-kubernetes-application-developer/07_Services & Networking/114_Solution - Network Policies (optional).extraction.md::E155
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 114_Solution - Network Policies (optional).txt
- Evidence: Okay, let's do a describe internal policy and we verify the pod selector and egress traffic configuration.

### Source 1459: certified-kubernetes-application-developer/07_Services & Networking/115_Ingress Networking.extraction.md::E165
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 115_Ingress Networking.txt
- Evidence: Once created, view additional details about the ingress resource by running the kubectl describe ingress command.

### Source 1460: certified-kubernetes-application-developer/07_Services & Networking/118_Solution_ Ingress Networking - 1.extraction.md::E69
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 118_Solution_ Ingress Networking - 1.txt
- Evidence: So let's just replace describe with edit.

### Source 1461: certified-kubernetes-application-developer/07_Services & Networking/118_Solution_ Ingress Networking - 1.extraction.md::E117
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 118_Solution_ Ingress Networking - 1.txt
- Evidence: Now a new payment service has been introduced, since it is critical, the new application is deployed in its own namespace.

### Source 1462: certified-kubernetes-application-developer/07_Services & Networking/118_Solution_ Ingress Networking - 1.extraction.md::E120
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 118_Solution_ Ingress Networking - 1.txt
- Evidence: So we have a new namespace called critical space.

### Source 1463: certified-kubernetes-application-developer/07_Services & Networking/118_Solution_ Ingress Networking - 1.extraction.md::E121
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 118_Solution_ Ingress Networking - 1.txt
- Evidence: So let's do a get deploy in the critical space.

### Source 1464: certified-kubernetes-application-developer/07_Services & Networking/118_Solution_ Ingress Networking - 1.extraction.md::E125
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 118_Solution_ Ingress Networking - 1.txt
- Evidence: So that's critical space.

### Source 1465: certified-kubernetes-application-developer/07_Services & Networking/118_Solution_ Ingress Networking - 1.extraction.md::E133
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 118_Solution_ Ingress Networking - 1.txt
- Evidence: So what we're going to do, is we're gonna create an Ingress resource for this critical space itself.

### Source 1466: certified-kubernetes-application-developer/07_Services & Networking/118_Solution_ Ingress Networking - 1.extraction.md::E160
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 118_Solution_ Ingress Networking - 1.txt
- Evidence: Remember this is has to be in the critical space.

### Source 1467: certified-kubernetes-application-developer/07_Services & Networking/118_Solution_ Ingress Networking - 1.extraction.md::E166
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 118_Solution_ Ingress Networking - 1.txt
- Evidence: So let's check it out: Get ingress in the critical space.

### Source 1468: certified-kubernetes-application-developer/07_Services & Networking/118_Solution_ Ingress Networking - 1.extraction.md::E169
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 118_Solution_ Ingress Networking - 1.txt
- Evidence: Ingress and critical space.

### Source 1469: certified-kubernetes-application-developer/07_Services & Networking/118_Solution_ Ingress Networking - 1.extraction.md::E174
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 118_Solution_ Ingress Networking - 1.txt
- Evidence: So if you look at the logs of this application in the critical space So we have the Web Pay service, so the Web Pay pod.

### Source 1470: certified-kubernetes-application-developer/07_Services & Networking/118_Solution_ Ingress Networking - 1.extraction.md::E175
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 118_Solution_ Ingress Networking - 1.txt
- Evidence: Then what we're going to do is we're gonna do a logs for that pod in the critical space.

### Source 1471: certified-kubernetes-application-developer/07_Services & Networking/118_Solution_ Ingress Networking - 1.extraction.md::E189
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 118_Solution_ Ingress Networking - 1.txt
- Evidence: So let's copy that and let's edit the Ingress pay in the critical space.

### Source 1472: certified-kubernetes-application-developer/07_Services & Networking/120_Solution_ Ingress Networking - 2.extraction.md::E120
- Source: certified-kubernetes-application-developer / 07_Services & Networking / 120_Solution_ Ingress Networking - 2.txt
- Evidence: Let see that it's created Let's go ahead, describe Ingress Ingress, let's do Appspace and we see that the wear is is to the wear-service and it's identified, the, the endpoint for that.

### Source 1473: certified-kubernetes-application-developer/08_State Persistence/127_Persistent Volume Claims.extraction.md::E10
- Source: certified-kubernetes-application-developer / 08_State Persistence / 127_Persistent Volume Claims.txt
- Evidence: Finally, note that a smaller claim may get bound to a larger volume if all the other criteria matches and there are no better options.

### Source 1474: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E12
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Evidence: So, describe pod web app?

### Source 1475: certified-kubernetes-application-developer/08_State Persistence/130_Solution - Persistent Volume and Persistent Volume Claims (Optional).extraction.md::E183
- Source: certified-kubernetes-application-developer / 08_State Persistence / 130_Solution - Persistent Volume and Persistent Volume Claims (Optional).txt
- Evidence: So, let's do a describe.

### Source 1476: certified-kubernetes-application-developer/08_State Persistence/134_Why Stateful Sets_.extraction.md::E5
- Source: certified-kubernetes-application-developer / 08_State Persistence / 134_Why Stateful Sets_.txt
- Evidence: So for a minute, let's keep aside everything that we learned so far such as deployments or Kubernetes, or Docker, or containers, or virtual machines.

### Source 1477: certified-kubernetes-application-developer/09_Security/142_KubeConfig.extraction.md::E4
- Source: certified-kubernetes-application-developer / 09_Security / 142_KubeConfig.txt
- Evidence: In this case, my cluster is called Minikube playground.

### Source 1478: certified-kubernetes-application-developer/09_Security/142_KubeConfig.extraction.md::E66
- Source: certified-kubernetes-application-developer / 09_Security / 142_KubeConfig.txt
- Evidence: So you've been using minikube admin user to access my Kube playground.

### Source 1479: certified-kubernetes-application-developer/09_Security/147_Role Based Access Controls.extraction.md::E35
- Source: certified-kubernetes-application-developer / 09_Security / 147_Role Based Access Controls.txt
- Evidence: When the kube control describe role developer command, here you see the details about the resources and permissions for each resource.

### Source 1480: certified-kubernetes-application-developer/09_Security/147_Role Based Access Controls.extraction.md::E36
- Source: certified-kubernetes-application-developer / 09_Security / 147_Role Based Access Controls.txt
- Evidence: Similarly, to view details about role bindings, run the kube control describe role bindings command.

### Source 1481: certified-kubernetes-application-developer/09_Security/149_Solution Role Based Access Controls.extraction.md::E8
- Source: certified-kubernetes-application-developer / 09_Security / 149_Solution Role Based Access Controls.txt
- Evidence: The other way is to, we're gonna look at the processes on the control plane.

### Source 1482: certified-kubernetes-application-developer/09_Security/149_Solution Role Based Access Controls.extraction.md::E10
- Source: certified-kubernetes-application-developer / 09_Security / 149_Solution Role Based Access Controls.txt
- Evidence: So we know that ultimately all containers are running as processes on the control plane.

### Source 1483: certified-kubernetes-application-developer/09_Security/149_Solution Role Based Access Controls.extraction.md::E29
- Source: certified-kubernetes-application-developer / 09_Security / 149_Solution Role Based Access Controls.txt
- Evidence: So let's do a kubectl describe, role, kube-proxy dash N kube-system.

### Source 1484: certified-kubernetes-application-developer/09_Security/149_Solution Role Based Access Controls.extraction.md::E51
- Source: certified-kubernetes-application-developer / 09_Security / 149_Solution Role Based Access Controls.txt
- Evidence: So you have kubectl describe role findings, kube-proxy in the default, sorry, in the kube system namespace.

### Source 1485: certified-kubernetes-application-developer/09_Security/149_Solution Role Based Access Controls.extraction.md::E81
- Source: certified-kubernetes-application-developer / 09_Security / 149_Solution Role Based Access Controls.txt
- Evidence: So let's describe the role.

### Source 1486: certified-kubernetes-application-developer/09_Security/149_Solution Role Based Access Controls.extraction.md::E111
- Source: certified-kubernetes-application-developer / 09_Security / 149_Solution Role Based Access Controls.txt
- Evidence: So describe role developer in the blue namespace.

### Source 1487: certified-kubernetes-application-developer/09_Security/152_Solution Cluster Roles.extraction.md::E28
- Source: certified-kubernetes-application-developer / 09_Security / 152_Solution Cluster Roles.txt
- Evidence: So let's describe the cluster role bindings or cluster admin, and we see that it's part of the group system U masters.

### Source 1488: certified-kubernetes-application-developer/09_Security/152_Solution Cluster Roles.extraction.md::E37
- Source: certified-kubernetes-application-developer / 09_Security / 152_Solution Cluster Roles.txt
- Evidence: That'll describe cluster role and cluster admin.

### Source 1489: certified-kubernetes-application-developer/09_Security/152_Solution Cluster Roles.extraction.md::E101
- Source: certified-kubernetes-application-developer / 09_Security / 152_Solution Cluster Roles.txt
- Evidence: Kube cuddle describe cluster role storage admin.

### Source 1490: certified-kubernetes-application-developer/09_Security/153_Admission Controllers.extraction.md::E52
- Source: certified-kubernetes-application-developer / 09_Security / 153_Admission Controllers.txt
- Evidence: Server control plane pod using the kubectl exec command first.

### Source 1491: certified-kubernetes-application-developer/09_Security/155_Solution_ Admission Controllers.extraction.md::E8
- Source: certified-kubernetes-application-developer / 09_Security / 155_Solution_ Admission Controllers.txt
- Evidence: You'll see that we have the kubeapi server control plane.

### Source 1492: certified-kubernetes-application-developer/09_Security/162_Solution_ API Versions_Deprecations.extraction.md::E2
- Source: certified-kubernetes-application-developer / 09_Security / 162_Solution_ API Versions_Deprecations.txt
- Evidence: But the first question, it says, identify the short names of the deployments, replica sets, crime jobs and custom resource definitions.

### Source 1493: certified-kubernetes-application-developer/09_Security/162_Solution_ API Versions_Deprecations.extraction.md::E35
- Source: certified-kubernetes-application-developer / 09_Security / 162_Solution_ API Versions_Deprecations.txt
- Evidence: And so now we need to enable the V1 Alpha 1 version for the rbac.authorization.k8.io API group on the control plane node.

### Source 1494: certified-kubernetes-application-developer/09_Security/162_Solution_ API Versions_Deprecations.extraction.md::E54
- Source: certified-kubernetes-application-developer / 09_Security / 162_Solution_ API Versions_Deprecations.txt
- Evidence: The next question is asking us to install the kubectl convert plugin on the control plane node.

### Source 1495: certified-kubernetes-application-developer/10_Helm Fundamentals/171_Helm Concepts.extraction.md::E20
- Source: certified-kubernetes-application-developer / 10_Helm Fundamentals / 171_Helm Concepts.txt
- Evidence: It also has a chart dot yaml file that has information about the chart itself, such as the name of the chart the charts version, a description of what the chart is some keywords associated with the application and information about the ERs.

### Source 1496: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/176_Installation_Setup.extraction.md::E3
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 176_Installation_Setup.txt
- Evidence: Kustomized can be installed on a Linux, Windows, or a Mac machine, and the Kustomized team has made it very easy to install Kustomize by providing a nice script that will automatically detect your operating system and install the appropriate version of Kustomize.

### Source 1497: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/176_Installation_Setup.extraction.md::E4
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 176_Installation_Setup.txt
- Evidence: So, on your terminal, run the following command which will download the script, and that script will pretty much be responsible for installing Kustomize for you, so you don't have to run any other commands, it's all done in that script itself.

### Source 1498: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/176_Installation_Setup.extraction.md::E8
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 176_Installation_Setup.txt
- Evidence: If there's still an issue, then rerun the installation script again.

### Source 1499: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/187_Patches Intro.extraction.md::E22
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 187_Patches Intro.txt
- Evidence: So this is basically specifying the match criteria on exactly what resource do we want to apply the patch on.

### Source 1500: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/194_Components.extraction.md::E15
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 194_Components.txt
- Evidence: We've got the development variation, the premium one for premium customers, and then a self-hosted version for any one of our customers that wants to self-host our application.

### Source 1501: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/194_Components.extraction.md::E19
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 194_Components.txt
- Evidence: And let's say that only the premium and the self-hosted version of our application should have caching enabled.

### Source 1502: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/194_Components.extraction.md::E27
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 194_Components.txt
- Evidence: And the problem with doing that is all three overlays will get the configuration, but remember, only self-hosted and premium should get the caching configuration.

### Source 1503: certified-kubernetes-application-developer/11_(2025 Updates) Kustomize Basics/194_Components.extraction.md::E31
- Source: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 194_Components.txt
- Evidence: Well, we can copy the caching configuration in both of the premium and self-hosted overlays, and that would work just fine.

### Source 1504: certified-kubernetes-application-developer/14_Lightning Labs/202_Solution_ Lightning Lab1.extraction.md::E64
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 202_Solution_ Lightning Lab1.txt
- Evidence: So we've got one policy here, and I'm gonna do a kubectl describe, and let's take a look.

### Source 1505: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E10
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2.txt
- Evidence: To troubleshoot this, I'm gonna start off by doing kubectl describe pod.

### Source 1506: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E90
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2.txt
- Evidence: And the final requirement is that we have to make sure this pod is scheduled on the control plane and no other node in the cluster.

### Source 1507: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E91
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2.txt
- Evidence: And so we can go up here and I'm gonna set the node name property to be control plane.

### Source 1508: certified-kubernetes-application-developer/14_Lightning Labs/204_Solution_ Lightning Lab - 2.extraction.md::E127
- Source: certified-kubernetes-application-developer / 14_Lightning Labs / 204_Solution_ Lightning Lab - 2.txt
- Evidence: Inspect the logs for the container called log dash X and redirect the warnings to the following file on the control plane node.

### Source 1509: certified-kubernetes-application-developer/15_Mock Exams/206_Mock Exam -1 (Solution).extraction.md::E19
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 206_Mock Exam -1 (Solution).txt
- Evidence: So, let's take a look at what could be wrong with this by doing a kubectl, describe, replica set, and then we'll pass in the name.

### Source 1510: certified-kubernetes-application-developer/15_Mock Exams/206_Mock Exam -1 (Solution).extraction.md::E31
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 206_Mock Exam -1 (Solution).txt
- Evidence: So, I'm gonna do kubectl, describe pod.

### Source 1511: certified-kubernetes-application-developer/15_Mock Exams/206_Mock Exam -1 (Solution).extraction.md::E64
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 206_Mock Exam -1 (Solution).txt
- Evidence: And if we do a kubectl, describe, config map, we should see all of the key value pairs in there.

### Source 1512: certified-kubernetes-application-developer/15_Mock Exams/208_Mock Exam -2 (Solution).extraction.md::E25
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 208_Mock Exam -2 (Solution).txt
- Evidence: And so now if I do a kubectl describe node node1, and we go under taints near the top, we should see the new taint that we just created.

### Source 1513: certified-kubernetes-application-developer/15_Mock Exams/209_Bonus Lecture.extraction.md::E13
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 209_Bonus Lecture.txt
- Evidence: And as this requires a larger lab infrastructure to host, this is only available on KodeKloud and requires a KodeKloud page subscription.

### Source 1514: certified-kubernetes-application-developer/15_Mock Exams/209_Bonus Lecture.extraction.md::E18
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 209_Bonus Lecture.txt
- Evidence: All of these are exclusively available on KodeKloud, so it requires a KodeKloud subscription.

### Source 1515: certified-kubernetes-application-developer/15_Mock Exams/209_Bonus Lecture.extraction.md::E19
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 209_Bonus Lecture.txt
- Evidence: But don't worry, use the coupon code UDEMY10 to get a special extra discount where you purchase your subscription.

### Source 1516: certified-kubernetes-application-developer/15_Mock Exams/209_Bonus Lecture.extraction.md::E28
- Source: certified-kubernetes-application-developer / 15_Mock Exams / 209_Bonus Lecture.txt
- Evidence: So once again, use that coupon code UDEMY10 to get a special extra discount when you purchase your KodeKloud subscription.

### Source 1517: learn-kubernetes/02_Kubernetes Overview/005_Containers Overview.extraction.md::E39
- Source: learn-kubernetes / 02_Kubernetes Overview / 005_Containers Overview.txt
- Evidence: As in they can have their own processes or services, their own network interfaces, their own mounts, just like virtual machines, except they all share the same OS kernel.

### Source 1518: learn-kubernetes/02_Kubernetes Overview/005_Containers Overview.extraction.md::E66
- Source: learn-kubernetes / 02_Kubernetes Overview / 005_Containers Overview.txt
- Evidence: Windows runs a Linux container on a Linux virtual machine under the hood.

### Source 1519: learn-kubernetes/02_Kubernetes Overview/005_Containers Overview.extraction.md::E67
- Source: learn-kubernetes / 02_Kubernetes Overview / 005_Containers Overview.txt
- Evidence: So it's really Linux container on Linux, virtual machine on Windows.

### Source 1520: learn-kubernetes/02_Kubernetes Overview/005_Containers Overview.extraction.md::E72
- Source: learn-kubernetes / 02_Kubernetes Overview / 005_Containers Overview.txt
- Evidence: So that brings us to the differences between virtual machines and containers, something that we tend to do, especially those from a virtualization background.

### Source 1521: learn-kubernetes/02_Kubernetes Overview/005_Containers Overview.extraction.md::E75
- Source: learn-kubernetes / 02_Kubernetes Overview / 005_Containers Overview.txt
- Evidence: In case of virtual machines, we have the hypervisor like ESX on the hardware and then the virtual machines on them.

### Source 1522: learn-kubernetes/02_Kubernetes Overview/005_Containers Overview.extraction.md::E76
- Source: learn-kubernetes / 02_Kubernetes Overview / 005_Containers Overview.txt
- Evidence: As you can see, each virtual machine has its own OS inside it, and then the dependencies and then the application.

### Source 1523: learn-kubernetes/02_Kubernetes Overview/005_Containers Overview.extraction.md::E77
- Source: learn-kubernetes / 02_Kubernetes Overview / 005_Containers Overview.txt
- Evidence: The overhead causes higher utilization of underlying resources, as there are multiple virtual operating systems and kernels, running the virtual machines also consume higher disk space, as each VM is heavy and is usually in gigabytes in size, whereas Docker containers are lightweight and are usually in megabytes in size.

### Source 1524: learn-kubernetes/02_Kubernetes Overview/005_Containers Overview.extraction.md::E82
- Source: learn-kubernetes / 02_Kubernetes Overview / 005_Containers Overview.txt
- Evidence: Now, having said that, it's not an either container or virtual machine situation.

### Source 1525: learn-kubernetes/02_Kubernetes Overview/005_Containers Overview.extraction.md::E83
- Source: learn-kubernetes / 02_Kubernetes Overview / 005_Containers Overview.txt
- Evidence: It's containers and virtual machines.

### Source 1526: learn-kubernetes/02_Kubernetes Overview/005_Containers Overview.extraction.md::E88
- Source: learn-kubernetes / 02_Kubernetes Overview / 005_Containers Overview.txt
- Evidence: But remember that in this case, we will not be provisioning that many virtual machines as we used to before, because earlier we provisioned a virtual machine for each application.

### Source 1527: learn-kubernetes/02_Kubernetes Overview/005_Containers Overview.extraction.md::E89
- Source: learn-kubernetes / 02_Kubernetes Overview / 005_Containers Overview.txt
- Evidence: Now you might provision a virtual machine for hundreds or thousands of containers.

### Source 1528: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E1
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So you're going to come across Docker and container D many times going forward.

### Source 1529: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E2
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So when you read older blogs or documentation pages, you'll see Docker mentioned along with Kubernetes.

### Source 1530: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E3
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: And when you read newer blogs you will see container D, and you'll wonder what the difference is between the two.

### Source 1531: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E4
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: And there are a few CLI tools like Ktor, CRI control or Node Control.

### Source 1532: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E5
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: And you'll wonder what are these CLI tools and which one should you be using?

### Source 1533: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E6
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So that's what I'm going to explain in this video.

### Source 1534: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E7
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So let's go back in time to the beginning of the container era.

### Source 1535: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E8
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: And in the beginning there was just Docker and there were other tools like rocket.

### Source 1536: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E9
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: But Docker's user experience made working with containers super simple, and hence Docker became the most dominant container tool.

### Source 1537: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E10
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: And then came Kubernetes to orchestrate Docker.

### Source 1538: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E11
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So Kubernetes was built to orchestrate Docker specifically in the beginning.

### Source 1539: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E12
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So Docker and Kubernetes were tightly coupled and back then Kubernetes only worked with Docker and didn't support any other container solutions.

### Source 1540: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E13
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: And then Kubernetes grew in popularity as a container orchestrator.

### Source 1541: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E14
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: And now other container runtimes like rocket wanted in Kubernetes.

### Source 1542: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E15
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: Users needed it to work with container runtimes that are other than just Docker.

### Source 1543: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E16
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: And so Kubernetes introduced an interface called Container Runtime Interface or CRE.

### Source 1544: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E17
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So CRE allowed any vendor to work as a container runtime for Kubernetes as long as they adhere to the OCI standards.

### Source 1545: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E18
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So OCI stands for Open Container Initiative, and it consists of an image spec and a runtime spec.

### Source 1546: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E19
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: Image spec means the specifications on how an image should be built.

### Source 1547: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E20
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So that's what it defined.

### Source 1548: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E21
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: An image spec defined the specifications on how an image should be built, and the runtime spec defined the standards on how any container runtime should be developed.

### Source 1549: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E22
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So keeping these standards in mind, Anyone can build a container runtime that can be used by anybody to work with Kubernetes.

### Source 1550: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E23
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So that was the idea.

### Source 1551: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E24
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So rocket and other container runtimes that adhere to the OCI standards were now supported as container runtimes for Kubernetes via the CRI.

### Source 1552: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E25
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: However, Docker wasn't built to support the CRI standards because remember, Docker was built way before CRI was introduced and Docker still was the dominant container tool used by most.

### Source 1553: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E26
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: Kubernetes had to continue to support Docker as well.

### Source 1554: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E27
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: And so Kubernetes introduced what is known as Docker shim, which was a hacky but temporary way to continue to support Docker outside of the container runtime interface.

### Source 1555: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E28
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: While most other container runtimes worked through the CRI, Docker continued to work without it.

### Source 1556: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E29
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: Now you see Docker isn't just a container runtime alone.

### Source 1557: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E30
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: Docker consists of multiple tools that are put together, for example, the Docker CLI, the Docker API, the build tools that help in building images.

### Source 1558: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E31
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: There was support for volumes of security.

### Source 1559: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E32
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: And finally also the container runtime called Runcie, the daemon that managed Runcie.

### Source 1560: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E33
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: And that's that was called as container D.

### Source 1561: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E34
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So container D is CLI compatible and can work directly with Kubernetes as all other runtimes.

### Source 1562: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E35
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So container D can be used as a runtime on its own separate from Docker.

### Source 1563: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E36
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So now you have container D as a separate runtime and Docker separately.

### Source 1564: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E37
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So Kubernetes continued to maintain support for Docker Engine directly.

### Source 1565: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E38
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: However, having to maintain the Docker shim was an unnecessary effort and added complications, so it was decided in version 1.24 release of Kubernetes to remove Dockershim completely, and so support for Docker was removed.

### Source 1566: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E39
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: But you see all the images that were built before Docker was removed.

### Source 1567: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E40
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So all the Docker images continue to work because Docker followed the image spec from the OCI standard.

### Source 1568: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E41
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So all the images built by Docker follow the standard.

### Source 1569: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E42
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So they continue to work with Containerd.

### Source 1570: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E43
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: But Docker itself was removed as a supported runtime from Kubernetes.

### Source 1571: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E44
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So that's the whole story.

### Source 1572: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E45
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: And now let's look into container D more specifically.

### Source 1573: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E46
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So container D although is part of Docker, is a separate project on its own now and is a member of CNCF with the graduated status.

### Source 1574: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E47
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So you can now install container D on its own without having to install Docker itself.

### Source 1575: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E48
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So if you don't really need Docker's other features, you could ideally just install container D alone.

### Source 1576: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E49
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So typically we ran containers using the docker run command when we had Docker.

### Source 1577: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E50
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: And if Docker isn't installed then how do you run containers with just To container D.

### Source 1578: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E51
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: Now once you install container D, it comes with a command line tool called Ktor.

### Source 1579: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E52
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: And this tool is solely made for debugging container D and is not very user friendly as it only supports a limited set of features.

### Source 1580: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E53
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: And this is what you can see in the documentation pages for this particular tool.

### Source 1581: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E54
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So for the other than the limited set of features that it provides, anything any other way that you want to interact with container D, you'll have to rely on making API calls directly, which is not the the most user friendly way for us to operate.

### Source 1582: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E55
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So just to give you an idea, this can be the Ktor command can be used to perform basic container related activities such as pull images.

### Source 1583: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E56
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: For example, to pull uh, redis image, you will run the ktor images pull command followed by the address of the image.

### Source 1584: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E57
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: And to run a container we use the CTL run command and specify the image address.

### Source 1585: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E58
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: But as I mentioned, this tool is solely made for debugging container D and is not very user friendly and not to be used for running or managing containers on a production environment, so a better alternative recommended is the nerd control tool or nerd CTL tool.

### Source 1586: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E59
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So the nerd control tool is a command line tool that's very similar to Docker.

### Source 1587: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E60
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So it's like Docker like CLI for container D.

### Source 1588: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E61
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: It supports all or most of the options that Docker supports.

### Source 1589: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E62
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: And apart from that it has the added benefit that it can give us access to the newest features implemented into container D.

### Source 1590: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E63
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: For example, we can work with the encrypted container images or other new feature that will eventually be implemented into the Docker commands in the future.

### Source 1591: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E64
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: It also supports lazy pulling of images, P2P image distribution, image signing and verifying and namespaces in Kubernetes, which is not available in Docker.

### Source 1592: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E65
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So the nerd control tool works very similar to Docker CLI.

### Source 1593: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E66
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So instead of Docker, you would ideally simply have to replace it with node control.

### Source 1594: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E67
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So you can run almost all Docker commands that interact with containers like this.

### Source 1595: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E68
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So some examples are instead of running the docker run command to create a container to run a container, you could just use the inert control run command.

### Source 1596: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E69
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: And similarly, let's say you want to use some options for port mappings or exposing ports with the Dash P option for the docker run command, you could do the same with node control.

### Source 1597: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E70
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: Simply replace Docker with node control.

### Source 1598: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E71
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So that's pretty easy and straightforward.

### Source 1599: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E72
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So now that we have talked about CTR and the node control tool, it's important to talk about another command line utility known as CRI, CTL or CRI control.

### Source 1600: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E73
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So earlier we talked about the container Runtime interface or CRI which is a single interface used to connect CRI compatible container runtimes the container, the rocket and others.

### Source 1601: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E74
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: The CRI control is a command line utility that is used to interact with the CRI compatible container runtime.

### Source 1602: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E75
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So this is kind of an interaction from the Kubernetes perspective.

### Source 1603: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E76
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So this tool is maintained by developed and maintained by the Kubernetes community.

### Source 1604: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E77
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: And this is this tool works across all the different container runtimes as opposed to earlier, you had the Ctor and the node control.

### Source 1605: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E78
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: Tool that were built by the container community specifically for container D.

### Source 1606: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E79
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: This particular tool is from the Kubernetes perspective that works across.

### Source 1607: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E80
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: Different container runtimes.

### Source 1608: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E81
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So it must be installed separately.

### Source 1609: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E82
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: And it is used to.

### Source 1610: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E83
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: Inspect and debug container runtime.

### Source 1611: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E84
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So this again is not ideally used to create containers.

### Source 1612: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E85
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: Unlike Docker or the node control utility this is again a debugging tool.

### Source 1613: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E86
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: You can technically create containers with the CRI control utility, but it's not easy.

### Source 1614: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E87
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: It's only to be used for some special debugging purposes.

### Source 1615: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E88
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: And the.

### Source 1616: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E89
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: Remember that it works along with the Kubelet, so we know that the Kubelet is responsible for ensuring that the specific number of containers or pods are available on on node at a time.

### Source 1617: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E90
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So if you go through the CRI control utility and try and create containers with it, then eventually Kubelet is going to delete them because the Kubelet is unaware of some of those containers or pods that are created outside of its knowledge.

### Source 1618: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E91
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So anything that it sees is going to go and delete it.

### Source 1619: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E92
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So because of those things, remember that the cry control utility is only used for debugging purposes and getting into containers and all of that.

### Source 1620: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E93
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So let's look at some of the command line examples.

### Source 1621: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E94
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So you simply run the right control CRE CTL command for this.

### Source 1622: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E95
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: And this can be used to perform basic container related activities such as pull images or list existing images.

### Source 1623: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E96
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: List containers very similar to the docker command where you use the PS command in docker.

### Source 1624: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E97
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: You will run the PS command.

### Source 1625: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E98
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: Here you would run the CRI control PS command and to run a command inside a container in Docker.

### Source 1626: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E99
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: Remember we use the exact command and it's the same here along with the same options such as the dash, I and T, and then you specify the container id and then the command that needs to be run to view the logs.

### Source 1627: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E100
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: Again you use the CRI control logs command very similar to Docker command.

### Source 1628: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E101
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: And one major difference is that the CRI cry.

### Source 1629: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E102
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: Control command is also aware of pods, so you can list pods by running the control pods command.

### Source 1630: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E103
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So this wasn't something that Docker was aware of.

### Source 1631: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E104
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So while working with Kubernetes in the past, we used Docker commands a lot to troubleshoot containers and view logs, especially on the worker nodes.

### Source 1632: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E105
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: Now you're going to use the cry control command to do so.

### Source 1633: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E106
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: The syntax is a lot similar.

### Source 1634: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E107
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So it shouldn't be shouldn't be really hard.

### Source 1635: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E108
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So here's a chart that lists the comparison between Docker and the cry control command line tool.

### Source 1636: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E109
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So as you can see, a lot of commands such as attach exec images, info, inspect logs, PS stats, version, etc. work exactly the same way and some of the commands to create, remove and start and stop images works similarly too.

### Source 1637: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E110
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So a full list of differences can be found in the link given below.

### Source 1638: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E111
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: Since, as I mentioned, cry control can be used to connect to any cry compatible runtime.

### Source 1639: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E112
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: Remember to set the right endpoint if you have multiple container runtimes configured, or if you want CRI control to interact with the specific runtime.

### Source 1640: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E113
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: For example, if you haven't configured anything by default, it's going to connect to these sockets in this particular order.

### Source 1641: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E114
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So it's going to try and connect to Dockershim first and then Containerd and then Cri-o.

### Source 1642: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E115
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: And then you have the cri docker db.

### Source 1643: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E116
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: That's the order that it follows.

### Source 1644: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E117
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: But if you want to override that and set a specific endpoint, you use the runtime endpoint option with the CRI control command line.

### Source 1645: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E118
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: Or you could use the container runtime endpoint environment variable.

### Source 1646: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E119
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: Set the environment variable to the right endpoint.

### Source 1647: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E120
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So to summarize, we have the Ktor command line utility that comes with Containerd and works with Containerd, which is used for debugging purposes only and has a very limited set of features.

### Source 1648: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E121
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So ideally you wouldn't be using this at all.

### Source 1649: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E122
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So you can ignore this.

### Source 1650: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E123
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: Then we have the nerd control CLI, which is again from the Containerd community.

### Source 1651: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E124
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: But this is a docker like CLI for container D, used for general purpose to create containers and supports the same or more features than docker CLI.

### Source 1652: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E125
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So this is something that I think we'll be using a lot more going forward.

### Source 1653: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E126
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: And then we have the CRI control utility which is from the Kubernetes community, the mainly used to interact with CRI compatible runtime.

### Source 1654: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E127
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So it's not just for container D.

### Source 1655: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E128
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: This can be used for all CRI supported runtimes.

### Source 1656: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E129
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: Again this is mainly for to be used for debugging purposes.

### Source 1657: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E130
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So if you look at the comparisons here you can see that CTR and CRI control are used mainly for debugging purposes, whereas the control is used for general purpose.

### Source 1658: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E131
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: The CTR and control are from the container the community and works with container D, whereas CRI control is from the Kubernetes community and works across all CRI compatible runtimes.

### Source 1659: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E132
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So our labs originally had Docker installed on all the nodes.

### Source 1660: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E133
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So we used the Docker commands to troubleshoot.

### Source 1661: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E134
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: But now it's all containerd.

### Source 1662: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E135
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: So remember to use the the CRI control command instead to troubleshoot.

### Source 1663: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E136
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: That's all for now.

### Source 1664: learn-kubernetes/02_Kubernetes Overview/008_Docker-vs-ContainerD.extraction.md::E137
- Source: learn-kubernetes / 02_Kubernetes Overview / 008_Docker-vs-ContainerD.txt
- Evidence: Thank you for listening.

### Source 1665: learn-kubernetes/03_Kubernetes Concepts/012_Kubernetes Setup - Introduction and Minikube.extraction.md::E1
- Source: learn-kubernetes / 03_Kubernetes Concepts / 012_Kubernetes Setup - Introduction and Minikube.txt
- Evidence: Let us now look at how to set up a Kubernetes cluster and gain access to it.

### Source 1666: learn-kubernetes/03_Kubernetes Concepts/012_Kubernetes Setup - Introduction and Minikube.extraction.md::E2
- Source: learn-kubernetes / 03_Kubernetes Concepts / 012_Kubernetes Setup - Introduction and Minikube.txt
- Evidence: So there are lots of ways to set up and get started with Kubernetes, so we can set it up ourselves from scratch locally on our laptops or virtual machines.

### Source 1667: learn-kubernetes/03_Kubernetes Concepts/012_Kubernetes Setup - Introduction and Minikube.extraction.md::E3
- Source: learn-kubernetes / 03_Kubernetes Concepts / 012_Kubernetes Setup - Introduction and Minikube.txt
- Evidence: Or we could use an existing managed service on a cloud provider, or you can access publicly accessible, uh, playgrounds.

### Source 1668: learn-kubernetes/03_Kubernetes Concepts/012_Kubernetes Setup - Introduction and Minikube.extraction.md::E4
- Source: learn-kubernetes / 03_Kubernetes Concepts / 012_Kubernetes Setup - Introduction and Minikube.txt
- Evidence: So for local systems, solutions like Docker Desktop, minikube and Kube admin are popular tools.

### Source 1669: learn-kubernetes/03_Kubernetes Concepts/012_Kubernetes Setup - Introduction and Minikube.extraction.md::E5
- Source: learn-kubernetes / 03_Kubernetes Concepts / 012_Kubernetes Setup - Introduction and Minikube.txt
- Evidence: Docker desktop is probably the easiest to get started with, and as it has Kubernetes support built in, and then you have minikube, which is a tool used to set up a single instance of Kubernetes in an all in one setup.

### Source 1670: learn-kubernetes/03_Kubernetes Concepts/012_Kubernetes Setup - Introduction and Minikube.extraction.md::E6
- Source: learn-kubernetes / 03_Kubernetes Concepts / 012_Kubernetes Setup - Introduction and Minikube.txt
- Evidence: And kube admin is a tool used to configure Kubernetes in a multi node setup, and we will look more into that later.

### Source 1671: learn-kubernetes/03_Kubernetes Concepts/012_Kubernetes Setup - Introduction and Minikube.extraction.md::E7
- Source: learn-kubernetes / 03_Kubernetes Concepts / 012_Kubernetes Setup - Introduction and Minikube.txt
- Evidence: There are also hosted versions available for setting up Kubernetes in a cloud environment such as GCP, AWS or Azure.

### Source 1672: learn-kubernetes/03_Kubernetes Concepts/012_Kubernetes Setup - Introduction and Minikube.extraction.md::E8
- Source: learn-kubernetes / 03_Kubernetes Concepts / 012_Kubernetes Setup - Introduction and Minikube.txt
- Evidence: And these are one click access.

### Source 1673: learn-kubernetes/03_Kubernetes Concepts/012_Kubernetes Setup - Introduction and Minikube.extraction.md::E9
- Source: learn-kubernetes / 03_Kubernetes Concepts / 012_Kubernetes Setup - Introduction and Minikube.txt
- Evidence: So you just click a button and it provisions an entire Kubernetes cluster for you.

### Source 1674: learn-kubernetes/03_Kubernetes Concepts/012_Kubernetes Setup - Introduction and Minikube.extraction.md::E10
- Source: learn-kubernetes / 03_Kubernetes Concepts / 012_Kubernetes Setup - Introduction and Minikube.txt
- Evidence: And then you gain access to it.

### Source 1675: learn-kubernetes/03_Kubernetes Concepts/012_Kubernetes Setup - Introduction and Minikube.extraction.md::E11
- Source: learn-kubernetes / 03_Kubernetes Concepts / 012_Kubernetes Setup - Introduction and Minikube.txt
- Evidence: And you can just continue to work with it without spending time setting it up.

### Source 1676: learn-kubernetes/03_Kubernetes Concepts/012_Kubernetes Setup - Introduction and Minikube.extraction.md::E12
- Source: learn-kubernetes / 03_Kubernetes Concepts / 012_Kubernetes Setup - Introduction and Minikube.txt
- Evidence: And finally, if you don't have the resources or if you don't want to go through this hassle of setting it all up for yourself as part of your learning process, and you just want an instant access to a Kubernetes cluster just to play with or run some commands and test test it around, then the best option is playgrounds.

### Source 1677: learn-kubernetes/03_Kubernetes Concepts/012_Kubernetes Setup - Introduction and Minikube.extraction.md::E13
- Source: learn-kubernetes / 03_Kubernetes Concepts / 012_Kubernetes Setup - Introduction and Minikube.txt
- Evidence: So one of the playgrounds that are available provided by us is the cloud playgrounds that are accessible at code Cloud.com.

### Source 1678: learn-kubernetes/03_Kubernetes Concepts/012_Kubernetes Setup - Introduction and Minikube.extraction.md::E14
- Source: learn-kubernetes / 03_Kubernetes Concepts / 012_Kubernetes Setup - Introduction and Minikube.txt
- Evidence: I'll also show a little bit of information about that in a bit.

### Source 1679: learn-kubernetes/03_Kubernetes Concepts/012_Kubernetes Setup - Introduction and Minikube.extraction.md::E15
- Source: learn-kubernetes / 03_Kubernetes Concepts / 012_Kubernetes Setup - Introduction and Minikube.txt
- Evidence: Now feel free to choose the one that is right for you.

### Source 1680: learn-kubernetes/03_Kubernetes Concepts/012_Kubernetes Setup - Introduction and Minikube.extraction.md::E16
- Source: learn-kubernetes / 03_Kubernetes Concepts / 012_Kubernetes Setup - Introduction and Minikube.txt
- Evidence: You don't need to go through all of the demos.

### Source 1681: learn-kubernetes/03_Kubernetes Concepts/012_Kubernetes Setup - Introduction and Minikube.extraction.md::E17
- Source: learn-kubernetes / 03_Kubernetes Concepts / 012_Kubernetes Setup - Introduction and Minikube.txt
- Evidence: Pick the ones that best suit your needs based on your time and resources.

### Source 1682: learn-kubernetes/03_Kubernetes Concepts/012_Kubernetes Setup - Introduction and Minikube.extraction.md::E18
- Source: learn-kubernetes / 03_Kubernetes Concepts / 012_Kubernetes Setup - Introduction and Minikube.txt
- Evidence: So just starting with Docker Desktop.

### Source 1683: learn-kubernetes/03_Kubernetes Concepts/012_Kubernetes Setup - Introduction and Minikube.extraction.md::E19
- Source: learn-kubernetes / 03_Kubernetes Concepts / 012_Kubernetes Setup - Introduction and Minikube.txt
- Evidence: So Docker Desktop is a free solution available with Docker.

### Source 1684: learn-kubernetes/03_Kubernetes Concepts/012_Kubernetes Setup - Introduction and Minikube.extraction.md::E20
- Source: learn-kubernetes / 03_Kubernetes Concepts / 012_Kubernetes Setup - Introduction and Minikube.txt
- Evidence: So if you go to the Docker Docker website you have options to download and install Docker on all of these different options that are available here.

### Source 1685: learn-kubernetes/03_Kubernetes Concepts/012_Kubernetes Setup - Introduction and Minikube.extraction.md::E21
- Source: learn-kubernetes / 03_Kubernetes Concepts / 012_Kubernetes Setup - Introduction and Minikube.txt
- Evidence: So you have Docker for Docker Desktop for Mac, both for, um, silicon as well as Intel chips.

### Source 1686: learn-kubernetes/03_Kubernetes Concepts/012_Kubernetes Setup - Introduction and Minikube.extraction.md::E22
- Source: learn-kubernetes / 03_Kubernetes Concepts / 012_Kubernetes Setup - Introduction and Minikube.txt
- Evidence: Similarly, you have Docker Desktop for windows, both for AMD and ARM chips, and then you have the Docker for desktop for Linux.

### Source 1687: learn-kubernetes/03_Kubernetes Concepts/012_Kubernetes Setup - Introduction and Minikube.extraction.md::E23
- Source: learn-kubernetes / 03_Kubernetes Concepts / 012_Kubernetes Setup - Introduction and Minikube.txt
- Evidence: Now once you, uh, set up and install Docker desktop, this is kind of the interface that you're going to see.

### Source 1688: learn-kubernetes/03_Kubernetes Concepts/012_Kubernetes Setup - Introduction and Minikube.extraction.md::E24
- Source: learn-kubernetes / 03_Kubernetes Concepts / 012_Kubernetes Setup - Introduction and Minikube.txt
- Evidence: You'll be able to see all the containers running and their information and a lot of other information.

### Source 1689: learn-kubernetes/03_Kubernetes Concepts/012_Kubernetes Setup - Introduction and Minikube.extraction.md::E25
- Source: learn-kubernetes / 03_Kubernetes Concepts / 012_Kubernetes Setup - Introduction and Minikube.txt
- Evidence: The best part is that it comes with Kubernetes built in.

### Source 1690: learn-kubernetes/03_Kubernetes Concepts/012_Kubernetes Setup - Introduction and Minikube.extraction.md::E26
- Source: learn-kubernetes / 03_Kubernetes Concepts / 012_Kubernetes Setup - Introduction and Minikube.txt
- Evidence: So if you go to settings and to Kubernetes section in the settings, all you need to do is enable Kubernetes from there.

### Source 1691: learn-kubernetes/03_Kubernetes Concepts/012_Kubernetes Setup - Introduction and Minikube.extraction.md::E27
- Source: learn-kubernetes / 03_Kubernetes Concepts / 012_Kubernetes Setup - Introduction and Minikube.txt
- Evidence: And it kind of sets up an instant Kubernetes cluster that you can play around with, uh, in the back end.

### Source 1692: learn-kubernetes/03_Kubernetes Concepts/012_Kubernetes Setup - Introduction and Minikube.extraction.md::E28
- Source: learn-kubernetes / 03_Kubernetes Concepts / 012_Kubernetes Setup - Introduction and Minikube.txt
- Evidence: So very easy to set up and gain access to Kubernetes.

### Source 1693: learn-kubernetes/03_Kubernetes Concepts/012_Kubernetes Setup - Introduction and Minikube.extraction.md::E29
- Source: learn-kubernetes / 03_Kubernetes Concepts / 012_Kubernetes Setup - Introduction and Minikube.txt
- Evidence: The next option I'm going to show is the, uh, code cloud public playgrounds.

### Source 1694: learn-kubernetes/03_Kubernetes Concepts/012_Kubernetes Setup - Introduction and Minikube.extraction.md::E30
- Source: learn-kubernetes / 03_Kubernetes Concepts / 012_Kubernetes Setup - Introduction and Minikube.txt
- Evidence: So, uh, this is built specifically for those who wants to have instant access to the, um, two, a Kubernetes cluster, specifically a historical version of the cluster two.

### Source 1695: learn-kubernetes/03_Kubernetes Concepts/012_Kubernetes Setup - Introduction and Minikube.extraction.md::E31
- Source: learn-kubernetes / 03_Kubernetes Concepts / 012_Kubernetes Setup - Introduction and Minikube.txt
- Evidence: So as you can see here, we currently support up to four historical versions of Kubernetes.

### Source 1696: learn-kubernetes/03_Kubernetes Concepts/012_Kubernetes Setup - Introduction and Minikube.extraction.md::E32
- Source: learn-kubernetes / 03_Kubernetes Concepts / 012_Kubernetes Setup - Introduction and Minikube.txt
- Evidence: So if you want to see if you want to go back to a previous version of Kubernetes cluster and, you know, compare and see features and differences between the clusters in between different versions, then this is a really good option.

### Source 1697: learn-kubernetes/03_Kubernetes Concepts/012_Kubernetes Setup - Introduction and Minikube.extraction.md::E33
- Source: learn-kubernetes / 03_Kubernetes Concepts / 012_Kubernetes Setup - Introduction and Minikube.txt
- Evidence: One click and you get this cloud Kubernetes playground open up in the right in the browser that you can then refer to.

### Source 1698: learn-kubernetes/03_Kubernetes Concepts/012_Kubernetes Setup - Introduction and Minikube.extraction.md::E34
- Source: learn-kubernetes / 03_Kubernetes Concepts / 012_Kubernetes Setup - Introduction and Minikube.txt
- Evidence: So moving on to minikube, which is another easy way to get started with Kubernetes on a local system.

### Source 1699: learn-kubernetes/03_Kubernetes Concepts/012_Kubernetes Setup - Introduction and Minikube.extraction.md::E35
- Source: learn-kubernetes / 03_Kubernetes Concepts / 012_Kubernetes Setup - Introduction and Minikube.txt
- Evidence: So before we head into the demo, it's good to understand how it works.

### Source 1700: learn-kubernetes/03_Kubernetes Concepts/012_Kubernetes Setup - Introduction and Minikube.extraction.md::E36
- Source: learn-kubernetes / 03_Kubernetes Concepts / 012_Kubernetes Setup - Introduction and Minikube.txt
- Evidence: Earlier, we talked about the different components of Kubernetes that make up a control plane and worker nodes such as the API server, etcd key value store controllers and scheduler on the master or the control plane, and then you have the Kubernetes and container runtime on the worker nodes.

### Source 1701: learn-kubernetes/03_Kubernetes Concepts/012_Kubernetes Setup - Introduction and Minikube.extraction.md::E37
- Source: learn-kubernetes / 03_Kubernetes Concepts / 012_Kubernetes Setup - Introduction and Minikube.txt
- Evidence: Now, it would take a lot of time and effort to set up and install all of these various components on different systems, individually, by ourselves, which is why a mini cube bundles all of these different components into a single image, providing us a pre-configured single node Kubernetes cluster so we can get started in a matter of minutes.

### Source 1702: learn-kubernetes/03_Kubernetes Concepts/012_Kubernetes Setup - Introduction and Minikube.extraction.md::E38
- Source: learn-kubernetes / 03_Kubernetes Concepts / 012_Kubernetes Setup - Introduction and Minikube.txt
- Evidence: Now, to make it easier, the whole bundle is packaged into an ISO image and is available online for download.

### Source 1703: learn-kubernetes/03_Kubernetes Concepts/012_Kubernetes Setup - Introduction and Minikube.extraction.md::E39
- Source: learn-kubernetes / 03_Kubernetes Concepts / 012_Kubernetes Setup - Introduction and Minikube.txt
- Evidence: Now you don't have to download it yourself.

### Source 1704: learn-kubernetes/03_Kubernetes Concepts/012_Kubernetes Setup - Introduction and Minikube.extraction.md::E40
- Source: learn-kubernetes / 03_Kubernetes Concepts / 012_Kubernetes Setup - Introduction and Minikube.txt
- Evidence: Minikube provides an executable command line utility that will automatically download the ISO image and deploy it in a virtualization platform such as Oracle VirtualBox or VMware fusion.

### Source 1705: learn-kubernetes/03_Kubernetes Concepts/012_Kubernetes Setup - Introduction and Minikube.extraction.md::E41
- Source: learn-kubernetes / 03_Kubernetes Concepts / 012_Kubernetes Setup - Introduction and Minikube.txt
- Evidence: So you must have a hypervisor installed on your system.

### Source 1706: learn-kubernetes/03_Kubernetes Concepts/012_Kubernetes Setup - Introduction and Minikube.extraction.md::E42
- Source: learn-kubernetes / 03_Kubernetes Concepts / 012_Kubernetes Setup - Introduction and Minikube.txt
- Evidence: So for windows you would use VirtualBox or Hyper-V.

### Source 1707: learn-kubernetes/03_Kubernetes Concepts/012_Kubernetes Setup - Introduction and Minikube.extraction.md::E43
- Source: learn-kubernetes / 03_Kubernetes Concepts / 012_Kubernetes Setup - Introduction and Minikube.txt
- Evidence: And for Linux you use VirtualBox or KVM.

### Source 1708: learn-kubernetes/03_Kubernetes Concepts/012_Kubernetes Setup - Introduction and Minikube.extraction.md::E44
- Source: learn-kubernetes / 03_Kubernetes Concepts / 012_Kubernetes Setup - Introduction and Minikube.txt
- Evidence: And finally, to interact with the Kubernetes cluster, you must have the kubectl Kubernetes command line tool also installed on your machine.

### Source 1709: learn-kubernetes/03_Kubernetes Concepts/012_Kubernetes Setup - Introduction and Minikube.extraction.md::E45
- Source: learn-kubernetes / 03_Kubernetes Concepts / 012_Kubernetes Setup - Introduction and Minikube.txt
- Evidence: So you need three things to get this working.

### Source 1710: learn-kubernetes/03_Kubernetes Concepts/012_Kubernetes Setup - Introduction and Minikube.extraction.md::E46
- Source: learn-kubernetes / 03_Kubernetes Concepts / 012_Kubernetes Setup - Introduction and Minikube.txt
- Evidence: So you must have a hypervisor installed.

### Source 1711: learn-kubernetes/03_Kubernetes Concepts/012_Kubernetes Setup - Introduction and Minikube.extraction.md::E47
- Source: learn-kubernetes / 03_Kubernetes Concepts / 012_Kubernetes Setup - Introduction and Minikube.txt
- Evidence: You have kubectl installed and you have minikube executable installed on your system.

### Source 1712: learn-kubernetes/03_Kubernetes Concepts/012_Kubernetes Setup - Introduction and Minikube.extraction.md::E48
- Source: learn-kubernetes / 03_Kubernetes Concepts / 012_Kubernetes Setup - Introduction and Minikube.txt
- Evidence: Let's check it out.

### Source 1713: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E1
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: In this demo, we are going to install a basic Kubernetes cluster using the minikube utility.

### Source 1714: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E2
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: As part of this beginners course, to keep things simple and easy, we will stick to minikube as our lab solution.

### Source 1715: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E3
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: We explore additional options of provisioning Kubernetes cluster using the Kube admin tool in the course.

### Source 1716: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E4
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: As for this course, we just want to stick to the very basics and all the basic operations can be performed on minikube cluster.

### Source 1717: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E5
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: So we will start at the Kubernetes.io page.

### Source 1718: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E6
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: Within this website, click on the documentation section and navigate to Tasks and Install Tools section.

### Source 1719: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E7
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: Now before installing minikube we must install the kubectl utility.

### Source 1720: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E8
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: It may be called kube control or kubectl or kubectl whatever you prefer.

### Source 1721: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E9
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: Now you might hear me mix it up at times, so bear with me on that.

### Source 1722: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E10
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: So the kubectl command line tool is what we will use to manage our Kubernetes resources and our cluster after it is set up using minikube and installing the kubectl utility before installing minikube will allow minikube to configure the kubectl utility to work with the cluster when it provisions it.

### Source 1723: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E11
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: So the kubectl utility can work with multiple clusters, local or remote clusters at the same time.

### Source 1724: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E12
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: And there's a small configuration for it.

### Source 1725: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E13
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: And minikube will automatically take care of that when it starts when it provisions a Kubernetes cluster.

### Source 1726: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E14
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: But that is if you already have the kubectl utility installed.

### Source 1727: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E15
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: So that's important.

### Source 1728: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E16
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: Now our goal is to set up a cluster on our local machine.

### Source 1729: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E17
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: I'm on Linux ubuntu system.

### Source 1730: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E18
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: But the same procedure will also work on Windows or Mac operating systems as well.

### Source 1731: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E19
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: Now all the demos and tools that we have throughout this course will work on all operating systems Linux, Windows or Mac.

### Source 1732: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E20
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: Okay, you just need to follow the respective installation procedure for your OS.

### Source 1733: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E21
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: And to start with, I'm going to install the kubectl utility on my Linux system.

### Source 1734: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E22
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: And we're going to go ahead with the latest version.

### Source 1735: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E23
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: So just copy and paste the command provided here for downloading the kubectl binary.

### Source 1736: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E24
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: The binary has now been downloaded.

### Source 1737: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E25
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: The next step is to make this command executable.

### Source 1738: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E26
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: So I'm going to use the command chmod plus x to make it executable.

### Source 1739: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E27
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: And finally we're going to move this to a location within the path usr local bin.

### Source 1740: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E28
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: Okay.

### Source 1741: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E29
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: So this way I'll be able to run this kubectl command from anywhere within my system.

### Source 1742: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E30
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: So let's run the command and you can see that it has installed the 1.8 version.

### Source 1743: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E31
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: Now what we just saw was a one way of installing a kubectl utility.

### Source 1744: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E32
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: There are other ways to do it.

### Source 1745: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E33
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: You can install it using a package.

### Source 1746: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E34
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: Managers depending upon the type of distribution, the OS distribution that you are on, and the documentation associated with these are available here.

### Source 1747: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E35
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: So if you scroll down, you'll see that there are instructions for installation on Mac OS, and there should be one for windows as well.

### Source 1748: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E36
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: So make sure that you use the appropriate link and setup kubectl based on the documentation provided.

### Source 1749: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E37
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: Now that we have completed the installation of kubectl utility, we can proceed with the installation of minikube.

### Source 1750: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E38
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: Now the first thing that we have to check, and this goes for all operating systems Linux, windows or Mac is to make sure that virtualization is enabled for your laptop or desktop wherever you're setting up this lab.

### Source 1751: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E39
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: So one of the easy ways to make sure that virtualization is enabled on Linux is to grep for the VM or the SCM keyword under the proc CPU info file.

### Source 1752: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E40
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: So that's what I'm going to do now.

### Source 1753: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E41
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: So as long as this command shows an output such as the switches listed here, virtualization has been enabled.

### Source 1754: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E42
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: And you don't have to enable it specifically from the Bios.

### Source 1755: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E43
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: If it's not enabled then you have to check your laptop's Bios settings.

### Source 1756: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E44
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: So you have to restart your laptop, go into the Bios and there should be an option to enable virtualization.

### Source 1757: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E45
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: And you have to do that.

### Source 1758: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E46
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: Um, you might have to check your laptop's manual, um, in order to know how that's done or just Check online with your laptop model and search how to enable virtualization on your laptop.

### Source 1759: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E47
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: And again, make sure that you check the documentation here for the respective operating system that you are on.

### Source 1760: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E48
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: For each of these, there are specific commands that can be used to run a test to see whether virtualization has been enabled.

### Source 1761: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E49
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: Okay.

### Source 1762: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E50
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: So next we're going to install minikube.

### Source 1763: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E51
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: And again we will go ahead with the option for Linux.

### Source 1764: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E52
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: And the first prerequisite is to install kubectl which we have already done.

### Source 1765: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E53
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: The next one is to install a hypervisor.

### Source 1766: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E54
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: So for Linux we can either use KVM or VirtualBox.

### Source 1767: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E55
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: Um we will go with VirtualBox as that is our preferred virtualization solution.

### Source 1768: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E56
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: You can also run minikube without a hypervisor and directly on your host using Docker.

### Source 1769: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E57
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: So if you already have Docker installed you could leverage that.

### Source 1770: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E58
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: Um, and have minikube or, you know, provision a Kubernetes cluster, uh, using a Docker container.

### Source 1771: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E59
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: However, note that as you can see here in the documentation page, um, there's a warning that says it can result in security or data loss issues.

### Source 1772: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E60
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: So we will just stick with a virtual machine based approach for now.

### Source 1773: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E61
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: I just prefer VirtualBox because it can, in case you mess up something on your system and you need to restart, it's easy to get rid of the VM and restart again, right?

### Source 1774: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E62
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: It won't really mess up your laptop and you can take snapshots before you make a major change, and then you can restore that snapshot in case that changed, you know, doesn't really work well for you.

### Source 1775: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E63
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: Now VirtualBox is supported on all variety of operating systems, including Linux, windows and OS X.

### Source 1776: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E64
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: So I'm going to open this in a new window.

### Source 1777: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E65
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: And it takes me to the download section.

### Source 1778: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E66
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: And here I'm going to select Linux distribution and the one that is most appropriate for my system.

### Source 1779: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E67
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: Uh you may choose one that is appropriate for yours.

### Source 1780: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E68
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: So wait for it to complete the download and then we will install VirtualBox.

### Source 1781: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E69
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: It has downloaded the Debian package, so I'm just going to install it directly.

### Source 1782: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E70
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: Um, wait for the installation to complete.

### Source 1783: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E71
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: And while it installs let's go back to the documentation section.

### Source 1784: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E72
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: So now the installation has been completed and I'm just going to close this and I'm going to launch VirtualBox.

### Source 1785: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E73
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: So as you can see here um, this is what the VirtualBox interface looks like.

### Source 1786: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E74
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: And you will have a similar interface for Windows or Mac.

### Source 1787: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E75
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: Um, with minor differences, but that should not matter.

### Source 1788: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E76
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: So right now we don't have any virtual machines running.

### Source 1789: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E77
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: So when we provision a cluster using minikube, it will automatically create a virtual machine as required.

### Source 1790: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E78
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: So apart from just installing VirtualBox, you don't really have to do anything directly with it.

### Source 1791: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E79
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: Now let's proceed with the installation.

### Source 1792: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E80
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: So the next step is to install the minikube utility.

### Source 1793: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E81
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: Again there are different ways to do this.

### Source 1794: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E82
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: Either use the package manager and install it as a package, or we can do it using a direct download approach.

### Source 1795: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E83
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: So we're going to download the latest version.

### Source 1796: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E84
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: And just like we did with the kubectl utility I'm going to curl the package and then install it on my machine.

### Source 1797: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E85
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: So I'm just going to copy the whole thing.

### Source 1798: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E86
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: And this will download the minikube binaries and assign an execute bit so that we can run it as a command.

### Source 1799: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E87
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: And once that has been done let us add minikube to our path.

### Source 1800: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E88
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: The user local bin directory has already been created, so we don't have to do that first step.

### Source 1801: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E89
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: We will run this command to install minikube at the location slash user local bin.

### Source 1802: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E90
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: Next we will provision a Kubernetes cluster using the minikube utility.

### Source 1803: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E91
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: So we're going to run the minikube start command.

### Source 1804: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E92
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: But we also have to specify the driver name to be used with this command.

### Source 1805: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E93
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: Now minikube can work with different virtualization tools.

### Source 1806: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E94
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: And that's where you must specify what driver to use.

### Source 1807: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E95
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: In our case we use VirtualBox.

### Source 1808: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E96
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: So let's open this link and make sure that you we are using the correct driver name.

### Source 1809: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E97
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: So the name of VirtualBox driver is VirtualBox.

### Source 1810: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E98
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: So we'll make use of that name.

### Source 1811: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E99
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: Um so I'm going to copy and paste this command until the driver name.

### Source 1812: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E100
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: And then I'm just going to copy the driver name from this page and paste it here.

### Source 1813: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E101
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: We will now execute the command when it starts.

### Source 1814: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E102
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: You'll notice that it follows a process.

### Source 1815: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E103
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: So it is in fact a downloading the ISO image for minikube.

### Source 1816: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E104
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: And then this is the image that will be used to provision a VM on VirtualBox.

### Source 1817: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E105
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: We now see that it's downloading Kubernetes version 1.8.3 and any other required binaries.

### Source 1818: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E106
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: Now let me switch to the VirtualBox UI.

### Source 1819: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E107
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: And we will see that a virtual machine by the name minikube has been created and it is in a running state.

### Source 1820: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E108
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: And you can see that the VM uses two CPUs and two GB of Ram.

### Source 1821: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E109
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: So let's wait for this setup to complete.

### Source 1822: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E110
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: Okay.

### Source 1823: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E111
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: So now this has been installed.

### Source 1824: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E112
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: And um kubectl utility is now configured to use the Kubernetes cluster provisioned using minikube.

### Source 1825: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E113
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: So let's head back to the documentation page.

### Source 1826: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E114
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: And the next thing that we are going to do is um run the minikube status command to ensure that everything has been set up correctly.

### Source 1827: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E115
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: So I'm going to clear the screen here and then run the minikube status command.

### Source 1828: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E116
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: We can see that, uh, the minikube uh, control plane, Kubelet API server, and Kubeconfig are all in a running and configured state.

### Source 1829: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E117
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: So that's good.

### Source 1830: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E118
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: Uh, if you run into issues with the installation anytime, feel free to run this command and check the status.

### Source 1831: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E119
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: So our cluster is now set up.

### Source 1832: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E120
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: We will deploy some applications on the cluster and make sure it's working as expected.

### Source 1833: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E121
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: Now we will get into talking about the different concepts on deploying an application in the upcoming lectures.

### Source 1834: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E122
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: Right now we just want to make sure that the cluster we setup is working as expected, so we will simply follow the tutorial given in this page.

### Source 1835: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E123
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: Although it may not make total sense now, but I assure you that we will get to that in a bit.

### Source 1836: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E124
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: So click on this link under What's Next?

### Source 1837: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E125
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: And here we have some examples that could be used to test our setup.

### Source 1838: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E126
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: In the new page.

### Source 1839: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E127
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: You can skip the first step of starting a minikube cluster.

### Source 1840: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E128
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: So we have already done that.

### Source 1841: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E129
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: So the next thing that we need to check is if kubectl commands are working.

### Source 1842: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E130
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: So I'm going to run the kubectl get nodes command.

### Source 1843: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E131
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: And you can see that it is a single node cluster.

### Source 1844: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E132
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: And the node name is minikube.

### Source 1845: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E133
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: And it is in a ready state.

### Source 1846: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E134
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: And it was spun up about eight seconds ago.

### Source 1847: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E135
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: And it's running the latest release of Kubernetes which is 1.18 as of this recording.

### Source 1848: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E136
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: So next let us try to create some deployments using this cluster.

### Source 1849: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E137
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: So here we have an example.

### Source 1850: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E138
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: On this page I'm going to run kubectl create deployment command to create the deployment.

### Source 1851: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E139
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: Once that is done, we will run the kubectl get deployments command.

### Source 1852: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E140
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: And you can see that the hello minikube deployment has been running for 22 seconds.

### Source 1853: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E141
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: Next we will expose this deployment as a service.

### Source 1854: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E142
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: For that make use of this command here.

### Source 1855: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E143
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: And kubectl expose deployment.

### Source 1856: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E144
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: Hello minikube command.

### Source 1857: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E145
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: Now don't worry about the command for now.

### Source 1858: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E146
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: We'll talk about this in much detail later in this course.

### Source 1859: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E147
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: For now we will just copy and paste.

### Source 1860: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E148
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: Okay.

### Source 1861: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E149
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: And then we will skip to step five where we will get the URL of the exposed service.

### Source 1862: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E150
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: So by running this command.

### Source 1863: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E151
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: And copy the URL and paste it into a browser on your laptop.

### Source 1864: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E152
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: And it should list the details about the application like this.

### Source 1865: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E153
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: Okay, so that's not the most exciting application, but this is proof that your setup is working.

### Source 1866: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E154
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: And that's all we need for now.

### Source 1867: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E155
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: Now follow the remaining instructions to clean up your system.

### Source 1868: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E156
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: Delete the services and delete the deployment.

### Source 1869: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E157
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: Now the deployment will be in a terminating state for a few seconds.

### Source 1870: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E158
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: And after it's done, the application will no longer be accessible on the web page.

### Source 1871: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E159
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: Well, that's it for now.

### Source 1872: learn-kubernetes/03_Kubernetes Concepts/013_Demo - Minikube-Setup.extraction.md::E160
- Source: learn-kubernetes / 03_Kubernetes Concepts / 013_Demo - Minikube-Setup.txt
- Evidence: I will see you in the next lecture.

### Source 1873: learn-kubernetes/03_Kubernetes Concepts/014_Pods.extraction.md::E41
- Source: learn-kubernetes / 03_Kubernetes Concepts / 014_Pods.txt
- Evidence: Let's assume we were developing a process or a script to deploy our application on a Docker host.

### Source 1874: learn-kubernetes/03_Kubernetes Concepts/015_Demo - Pods.extraction.md::E1
- Source: learn-kubernetes / 03_Kubernetes Concepts / 015_Demo - Pods.txt
- Evidence: In this demo, we're going to deploy a pod in our minikube cluster.

### Source 1875: learn-kubernetes/03_Kubernetes Concepts/015_Demo - Pods.extraction.md::E4
- Source: learn-kubernetes / 03_Kubernetes Concepts / 015_Demo - Pods.txt
- Evidence: Now if you followed our demo earlier of deploying a cluster using minikube, then you already have the kubectl command line utility configured to work with the cluster.

### Source 1876: learn-kubernetes/03_Kubernetes Concepts/015_Demo - Pods.extraction.md::E17
- Source: learn-kubernetes / 03_Kubernetes Concepts / 015_Demo - Pods.txt
- Evidence: We can get more information related to the pod by running the kubectl describe pod nginx command, and you'll notice that this provides a lot more information as compared to the get command.

### Source 1877: learn-kubernetes/03_Kubernetes Concepts/015_Demo - Pods.extraction.md::E23
- Source: learn-kubernetes / 03_Kubernetes Concepts / 015_Demo - Pods.txt
- Evidence: So in this case, we just have a single node cluster set up using minikube.

### Source 1878: learn-kubernetes/03_Kubernetes Concepts/015_Demo - Pods.extraction.md::E24
- Source: learn-kubernetes / 03_Kubernetes Concepts / 015_Demo - Pods.txt
- Evidence: And the node name is minikube.

### Source 1879: learn-kubernetes/03_Kubernetes Concepts/015_Demo - Pods.extraction.md::E38
- Source: learn-kubernetes / 03_Kubernetes Concepts / 015_Demo - Pods.txt
- Evidence: We can see that the pod was assigned to the minikube node.

### Source 1880: learn-kubernetes/03_Kubernetes Concepts/015_Demo - Pods.extraction.md::E48
- Source: learn-kubernetes / 03_Kubernetes Concepts / 015_Demo - Pods.txt
- Evidence: That was a quick demonstration on how to run a pod in minikube environment.

### Source 1881: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/020_Pods with YAML.extraction.md::E60
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 020_Pods with YAML.txt
- Evidence: To see detailed information about the pod, run the kubectl describe pod command.

### Source 1882: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/021_Demo - Pods with YAML.extraction.md::E73
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 021_Demo - Pods with YAML.txt
- Evidence: And as before if you want to get more details about the pod, you can always run the kubectl describe command and specify the the name of the pod.

### Source 1883: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/025_Solution _ Pods with YAML Lab.extraction.md::E42
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 025_Solution _ Pods with YAML Lab.txt
- Evidence: And when you know that, to look at it in detail, we've got to run the queue to describe that.

### Source 1884: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/025_Solution _ Pods with YAML Lab.extraction.md::E53
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 025_Solution _ Pods with YAML Lab.txt
- Evidence: So one way to do this is we've already run the described pod command and we can see that this is on node control plane and we could actually run the the described command against each pod.

### Source 1885: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/025_Solution _ Pods with YAML Lab.extraction.md::E56
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 025_Solution _ Pods with YAML Lab.txt
- Evidence: And here you get to see the node and it's a control plane.

### Source 1886: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/025_Solution _ Pods with YAML Lab.extraction.md::E57
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 025_Solution _ Pods with YAML Lab.txt
- Evidence: So all of the new parts are created on the controlled payload select control plane.

### Source 1887: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/025_Solution _ Pods with YAML Lab.extraction.md::E64
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 025_Solution _ Pods with YAML Lab.txt
- Evidence: So that's one way to figure that out or to always run the describe command.

### Source 1888: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/027_Demo - ReplicaSets.extraction.md::E85
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 027_Demo - ReplicaSets.txt
- Evidence: Now, if you run the kubectl describe replica set command for the new replica set, um, we will see that the desired number of replicas history.

### Source 1889: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/027_Demo - ReplicaSets.extraction.md::E87
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 027_Demo - ReplicaSets.txt
- Evidence: Just like what we saw with the um kubectl describe pod command.

### Source 1890: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/027_Demo - ReplicaSets.extraction.md::E115
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 027_Demo - ReplicaSets.txt
- Evidence: So if we run the kubectl describe command now, we'll see that at the bottom under the events section of the output of uh describe command, the replica set controller, um, deletes the new nginx two pod that we just created.

### Source 1891: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/029_Solution - ReplicaSets.extraction.md::E23
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 029_Solution - ReplicaSets.txt
- Evidence: And for that we know we have to run the Q cattle describe command and we're going to run describe replica set and then new replica set.

### Source 1892: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/029_Solution - ReplicaSets.extraction.md::E41
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 029_Solution - ReplicaSets.txt
- Evidence: So let's run the to describe command.

### Source 1893: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/031_Demo - Deployments.extraction.md::E36
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 031_Demo - Deployments.txt
- Evidence: Now let us run a kubectl describe deployment command and the name of the deployment is myapp dash deployment.

### Source 1894: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/033_Solution - Deployments.extraction.md::E41
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 033_Solution - Deployments.txt
- Evidence: Describe Pod.

### Source 1895: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/033_Solution - Deployments.extraction.md::E46
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 033_Solution - Deployments.txt
- Evidence: Some of these commands, the get commands and the described commands.

### Source 1896: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/034_Deployments - Update and Rollback.extraction.md::E31
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 034_Deployments - Update and Rollback.txt
- Evidence: Describe deployment command to see the detailed information regarding the deployments.

### Source 1897: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/035_Demo - Deployments - Update and Rollback.extraction.md::E58
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 035_Demo - Deployments - Update and Rollback.txt
- Evidence: And if I do a describe deployment command to see the details, um, I can actually see the detailed image name or the new image which is nginx X 1.12.

### Source 1898: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/035_Demo - Deployments - Update and Rollback.extraction.md::E84
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 035_Demo - Deployments - Update and Rollback.txt
- Evidence: When I run the cube control describe deployments command, I can now see the image of my application containers updated to nginx 1.1 to Perl.

### Source 1899: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/035_Demo - Deployments - Update and Rollback.extraction.md::E97
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 035_Demo - Deployments - Update and Rollback.txt
- Evidence: If I now run the cube control describe command I can now see that the image is now back to 1.12, which was actually revision revision two.

### Source 1900: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/037_Solution - Rolling Updates and Rollbacks.extraction.md::E28
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 037_Solution - Rolling Updates and Rollbacks.txt
- Evidence: Now run the script named Test to send multiple requests to the Web application.

### Source 1901: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/037_Solution - Rolling Updates and Rollbacks.extraction.md::E33
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 037_Solution - Rolling Updates and Rollbacks.txt
- Evidence: So we're going to use this script to run tests on to kind of simulate accessing the web application by either multiple users, so or sending multiple requests to the web application.

### Source 1902: learn-kubernetes/05_Kubernetes Concepts - Pods, ReplicaSets, Deployments/037_Solution - Rolling Updates and Rollbacks.extraction.md::E90
- Source: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 037_Solution - Rolling Updates and Rollbacks.txt
- Evidence: Let's run the describe command again.

### Source 1903: learn-kubernetes/06_Networking in Kubernetes/038_Basics of Networking in Kubernetes.extraction.md::E8
- Source: learn-kubernetes / 06_Networking in Kubernetes / 038_Basics of Networking in Kubernetes.txt
- Evidence: On a side note, remember if you're using a minikube setup, then I'm talking about the IP address of the minikube virtual machine inside your hypervisor.

### Source 1904: learn-kubernetes/06_Networking in Kubernetes/038_Basics of Networking in Kubernetes.extraction.md::E37
- Source: learn-kubernetes / 06_Networking in Kubernetes / 038_Basics of Networking in Kubernetes.txt
- Evidence: Kubernetes expects us to set up a networking solution that meets these criteria.

### Source 1905: learn-kubernetes/07_Services/040_Demo - Services.extraction.md::E21
- Source: learn-kubernetes / 07_Services / 040_Demo - Services.txt
- Evidence: Now our goal is to be able to access our application on a port on the node, which is the minikube node in our case.

### Source 1906: learn-kubernetes/07_Services/040_Demo - Services.extraction.md::E27
- Source: learn-kubernetes / 07_Services / 040_Demo - Services.txt
- Evidence: And this node port is a is the port on the node, the worker node, which is the minikube node on which the application will be made accessible.

### Source 1907: learn-kubernetes/07_Services/040_Demo - Services.extraction.md::E45
- Source: learn-kubernetes / 07_Services / 040_Demo - Services.txt
- Evidence: Now, since we are running this on minikube, we can also run the minikube service command followed by the name of the service, which is the My App service, and use the option Dash dash URL and it should print us the URL and with the service where the service is available.

### Source 1908: learn-kubernetes/07_Services/044_Solution - Services.extraction.md::E17
- Source: learn-kubernetes / 07_Services / 044_Solution - Services.txt
- Evidence: Describe command.

### Source 1909: learn-kubernetes/07_Services/044_Solution - Services.extraction.md::E18
- Source: learn-kubernetes / 07_Services / 044_Solution - Services.txt
- Evidence: We're going to describe the service named Kubernetes.

### Source 1910: learn-kubernetes/07_Services/044_Solution - Services.extraction.md::E52
- Source: learn-kubernetes / 07_Services / 044_Solution - Services.txt
- Evidence: So and that's when, when we look at the, the output of the queue will describe command and that we can identify the additional endpoints apart from what we, what we thought we had configured.

### Source 1911: learn-kubernetes/07_Services/044_Solution - Services.extraction.md::E53
- Source: learn-kubernetes / 07_Services / 044_Solution - Services.txt
- Evidence: So we're going to see, when you look at the queue described command for the service, we're going to see that there are four endpoints.

### Source 1912: learn-kubernetes/07_Services/044_Solution - Services.extraction.md::E62
- Source: learn-kubernetes / 07_Services / 044_Solution - Services.txt
- Evidence: And that's when you look at the description of the service and you realize that the endpoints are zero.

### Source 1913: learn-kubernetes/09_Kubernetes on Cloud/050_Kubernetes on Cloud - Introduction.extraction.md::E5
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 050_Kubernetes on Cloud - Introduction.txt
- Evidence: And I would categorize them as either self-hosted or turnkey solutions and hosted or managed solutions.

### Source 1914: learn-kubernetes/09_Kubernetes on Cloud/050_Kubernetes on Cloud - Introduction.extraction.md::E6
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 050_Kubernetes on Cloud - Introduction.txt
- Evidence: So turnkey solutions are where you provision the required VMs and use some kind of tools or scripts to configure the Kubernetes cluster on them.

### Source 1915: learn-kubernetes/09_Kubernetes on Cloud/050_Kubernetes on Cloud - Introduction.extraction.md::E7
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 050_Kubernetes on Cloud - Introduction.txt
- Evidence: So at the end of the day, you are responsible for maintaining those VMs and patching them and upgrading them, etc. but provisioning the cluster itself and managing the lifecycle of the cluster are mostly made easy using certain tools and scripts.

### Source 1916: learn-kubernetes/09_Kubernetes on Cloud/051_Kubernetes on GCP (GKE).extraction.md::E19
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 051_Kubernetes on GCP (GKE).txt
- Evidence: Now you can make additional changes to the worker nodes, um, that have to be configured so you can make change to the type of virtual machine to be used, the size, etc..

### Source 1917: learn-kubernetes/09_Kubernetes on Cloud/053_Kubernetes on AWS (EKS).extraction.md::E69
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 053_Kubernetes on AWS (EKS).txt
- Evidence: But currently the kubectl utility is configured to work with our local minikube cluster.

### Source 1918: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E5
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Evidence: Also some basic knowledge on Azure can help to, you know, prepare subscriptions and perform some basic configurations.

### Source 1919: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E15
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Evidence: So it will select your subscription by default.

### Source 1920: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E16
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Evidence: So make sure the right subscription is selected.

### Source 1921: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E17
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Evidence: So if you're using a free subscription make sure that the right one is selected.

### Source 1922: learn-kubernetes/09_Kubernetes on Cloud/054_Kubernetes on Azure (AKS).extraction.md::E49
- Source: learn-kubernetes / 09_Kubernetes on Cloud / 054_Kubernetes on Azure (AKS).txt
- Evidence: So here is the walkthrough of AKS which describes the steps that we have been following.

### Source 1923: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/058_Kubernetes Setup - Kubeadm.extraction.md::E1
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 058_Kubernetes Setup - Kubeadm.txt
- Evidence: In this lecture, we will look at the cube admin tool, which can be used to bootstrap a Kubernetes cluster.

### Source 1924: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/058_Kubernetes Setup - Kubeadm.extraction.md::E2
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 058_Kubernetes Setup - Kubeadm.txt
- Evidence: The cube admin tool helps us set up a multi-node cluster following the Kubernetes best practices.

### Source 1925: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/058_Kubernetes Setup - Kubeadm.extraction.md::E3
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 058_Kubernetes Setup - Kubeadm.txt
- Evidence: As we discussed, the Kubernetes cluster consists of various components such as the cube API server, etcd controllers, etc. and we've seen some of the requirements around security and certificates to enable communication between these components.

### Source 1926: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/058_Kubernetes Setup - Kubeadm.extraction.md::E4
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 058_Kubernetes Setup - Kubeadm.txt
- Evidence: Installing all of these various components individually on different nodes, and modifying the configuration files to make sure these components point to each other, and setting up certificates to make it work is a tedious task.

### Source 1927: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/058_Kubernetes Setup - Kubeadm.extraction.md::E5
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 058_Kubernetes Setup - Kubeadm.txt
- Evidence: The cube admin tool helps us by taking care of all of those tasks.

### Source 1928: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/058_Kubernetes Setup - Kubeadm.extraction.md::E6
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 058_Kubernetes Setup - Kubeadm.txt
- Evidence: Let's go through the steps to set up a Kubernetes cluster using the cube admin tool at a high level.

### Source 1929: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/058_Kubernetes Setup - Kubeadm.extraction.md::E7
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 058_Kubernetes Setup - Kubeadm.txt
- Evidence: First, you must have multiple systems or virtual machines provisioned for configuring a cluster.

### Source 1930: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/058_Kubernetes Setup - Kubeadm.extraction.md::E8
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 058_Kubernetes Setup - Kubeadm.txt
- Evidence: We will see how to set up your laptop to do just that.

### Source 1931: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/058_Kubernetes Setup - Kubeadm.extraction.md::E9
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 058_Kubernetes Setup - Kubeadm.txt
- Evidence: That's if you're not familiar with it.

### Source 1932: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/058_Kubernetes Setup - Kubeadm.extraction.md::E10
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 058_Kubernetes Setup - Kubeadm.txt
- Evidence: Once the systems are created, designate one node as master and others as worker nodes.

### Source 1933: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/058_Kubernetes Setup - Kubeadm.extraction.md::E11
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 058_Kubernetes Setup - Kubeadm.txt
- Evidence: The next step is to install a container runtime on the hosts.

### Source 1934: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/058_Kubernetes Setup - Kubeadm.extraction.md::E12
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 058_Kubernetes Setup - Kubeadm.txt
- Evidence: We will be using Docker, so we must install Docker on all the nodes.

### Source 1935: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/058_Kubernetes Setup - Kubeadm.extraction.md::E13
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 058_Kubernetes Setup - Kubeadm.txt
- Evidence: The next step is to install kube admin tool on all the nodes.

### Source 1936: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/058_Kubernetes Setup - Kubeadm.extraction.md::E14
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 058_Kubernetes Setup - Kubeadm.txt
- Evidence: The kube admin tool helps us bootstrap the Kubernetes solution by installing and configuring all the required components in the right nodes in the right order.

### Source 1937: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/058_Kubernetes Setup - Kubeadm.extraction.md::E15
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 058_Kubernetes Setup - Kubeadm.txt
- Evidence: The next step is to initialize the master server.

### Source 1938: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/058_Kubernetes Setup - Kubeadm.extraction.md::E16
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 058_Kubernetes Setup - Kubeadm.txt
- Evidence: During this process, all the required components are installed and configured on the master server.

### Source 1939: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/058_Kubernetes Setup - Kubeadm.extraction.md::E17
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 058_Kubernetes Setup - Kubeadm.txt
- Evidence: Once the master is initialized and before joining the worker nodes to the master, you must ensure that the network prerequisites are met.

### Source 1940: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/058_Kubernetes Setup - Kubeadm.extraction.md::E18
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 058_Kubernetes Setup - Kubeadm.txt
- Evidence: A normal network connectivity between the systems is not sufficient for this.

### Source 1941: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/058_Kubernetes Setup - Kubeadm.extraction.md::E19
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 058_Kubernetes Setup - Kubeadm.txt
- Evidence: Kubernetes requires a special networking solution between the master and worker nodes, which is called as the pod network.

### Source 1942: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/058_Kubernetes Setup - Kubeadm.extraction.md::E20
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 058_Kubernetes Setup - Kubeadm.txt
- Evidence: The last step is to join the worker nodes to the master node, where then all set to launch our application in the Kubernetes environment.

### Source 1943: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/058_Kubernetes Setup - Kubeadm.extraction.md::E21
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 058_Kubernetes Setup - Kubeadm.txt
- Evidence: We will now see a demo of setting up Kubernetes using the Kube admin tool in our local environment.

### Source 1944: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E1
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So before we get started with installing a Kubernetes cluster with kube ADM, we need to actually provision a couple of nodes that we're going to use within our cluster.

### Source 1945: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E2
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So we need at least 2 to 3 Kubernetes nodes which are just basically Linux servers.

### Source 1946: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E3
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So we need three Linux servers.

### Source 1947: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E4
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: Now you could obviously buy a server or an extra computer.

### Source 1948: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E5
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: Um, or in this case three of them to accomplish that.

### Source 1949: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E6
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: But that's obviously going to cost money.

### Source 1950: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E7
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: And we want to make sure that if you are following along with this demo.

### Source 1951: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E8
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: Anybody can follow along.

### Source 1952: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E9
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: And so what we're going to do is we're gonna make use of a technology called virtualization.

### Source 1953: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E10
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: It's going to allow us to essentially spin up a computer within our computer.

### Source 1954: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E11
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So I've got this windows machine here, and within this windows machine we can actually spin up three Linux servers that we can use as Kubernetes nodes.

### Source 1955: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E12
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: Now we're going to start off by going over how to do this in windows.

### Source 1956: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E13
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: And then in the next video we're going to go over how to do this in macOS.

### Source 1957: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E14
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: Because the steps are going to be a little bit different because they are two different platforms.

### Source 1958: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E15
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So for um, getting this up and running with windows, we need two things.

### Source 1959: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E16
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: First of all, we need what's called a hypervisor.

### Source 1960: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E17
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: A hypervisor is what manages all of the different virtual machines.

### Source 1961: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E18
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: It's the tool that allows us to create all of these mini servers within my windows laptop.

### Source 1962: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E19
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: Now, there's a variety of different hypervisors out there.

### Source 1963: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E20
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: We're going to use a free one called VirtualBox.

### Source 1964: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E21
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So this is free not going to cost anything.

### Source 1965: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E22
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: It's available to anyone and it's available across multiple platforms.

### Source 1966: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E23
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: You could even use this on Mac and Linux as well.

### Source 1967: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E24
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: Now I do want to point out that especially with Apple Silicon.

### Source 1968: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E25
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So if you're running, you know, like one of the M1, M2, M3, M4 chips, there have been certain issues with trying to get VirtualBox up and running on Mac.

### Source 1969: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E26
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So this is just something to keep in mind.

### Source 1970: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E27
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: You'll see that when we get to the Mac section, we're going to actually be using a different tool called Multipass just to help avoid any issues with running VirtualBox on Apple Silicon.

### Source 1971: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E28
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: But if you're running, you know, one of the old Intel based Mac computers, then you can absolutely use VirtualBox as well.

### Source 1972: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E29
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So what you want to do is we go to VirtualBox org and you want to select this download button or select download up there.

### Source 1973: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E30
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: And that's going to take you to this page.

### Source 1974: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E31
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: That's going to show you the installers for the various platforms it supports.

### Source 1975: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E32
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: We're going to select windows hosts in this case because I'm on a windows machine and this demo is for windows or for PCs.

### Source 1976: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E33
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So this is going to go ahead and download that.

### Source 1977: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E34
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: And then we can open this up and you'll probably get a message like this.

### Source 1978: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E35
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: Just go ahead and hit yes.

### Source 1979: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E36
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: You're going to get the installer window.

### Source 1980: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E37
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: Just go ahead and keep hitting.

### Source 1981: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E38
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: Next hit accept the terms in the license agreement.

### Source 1982: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E39
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: Hit next.

### Source 1983: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E40
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: You can leave everything as default.

### Source 1984: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E41
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: We don't need to change anything.

### Source 1985: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E42
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: It's going to give you a warning that you're going to temporarily lose network connectivity.

### Source 1986: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E43
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: This is just for a split second.

### Source 1987: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E44
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: Just because your hypervisor does manage the networking for your different virtual machines.

### Source 1988: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E45
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So it needs to make a couple of changes.

### Source 1989: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E46
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So just hit yes and then hit yes.

### Source 1990: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E47
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: You can go ahead and select which ones you want.

### Source 1991: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E48
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: I'm just going to leave everything as default.

### Source 1992: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E49
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: And then we're going to install that.

### Source 1993: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E50
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: And once that's complete, you can go ahead and hit finish.

### Source 1994: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E51
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: Um, right now I have it checked to start it up automatically.

### Source 1995: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E52
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: We're going to do that.

### Source 1996: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E53
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: Um, if you don't select that, that's okay.

### Source 1997: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E54
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: You could just open it up, um, inside your search window, um, so that we can go ahead and start the program.

### Source 1998: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E55
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: Okay.

### Source 1999: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E56
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: And so you can see, um, this opened up on another window, but we've got our VirtualBox set up and installed.

### Source 2000: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E57
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So with this virtual box, which is our hypervisor, it's going to allow us to create these virtual machines.

### Source 2001: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E58
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So our kind of computers inside my computer and you know, I can create a Linux virtual machine, I can create a windows virtual machine.

### Source 2002: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E59
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: I can even create a mac OS virtual machine.

### Source 2003: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E60
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: I would just hit new and I would go through the steps of providing an image for it, and then it's going to go ahead and go through the whole installation process.

### Source 2004: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E61
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: And it'll be like installing a brand new operating system on any server.

### Source 2005: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E62
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So it's a little bit of a time consuming process, especially if you need three servers, right?

### Source 2006: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E63
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: Just like we do, we need three servers so that we can actually set up a Kubernetes cluster.

### Source 2007: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E64
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So you could do it manually one by one.

### Source 2008: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E65
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: But instead of doing that, there's actually another tool that can actually help speed up this process.

### Source 2009: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E66
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: And there's this tool called vagrant.

### Source 2010: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E67
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So vagrant is kind of like an automation tool for virtual machines.

### Source 2011: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E68
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So it basically allows you to define in a file all the configurations that you want for your different virtual machines.

### Source 2012: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E69
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: You run one command and it's going to spin up, you know potentially, you know, three, four, five.

### Source 2013: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E70
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: However many virtual machines you want all configured in your desired configuration.

### Source 2014: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E71
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So it helps speed up the process and that it's also going to allow us to give you a config file so that we can actually get three nodes, uh, set up as quickly and easily as possible so that you guys actually can get started with installing a cluster using kubectl.

### Source 2015: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E72
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So we're going to use this tool to automate the provisioning of virtual machines.

### Source 2016: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E73
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: Now to set up vagrant, um, you could go to the website for vagrant which is developer.com.

### Source 2017: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E74
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: Or you could just search for Vagrant in Google.

### Source 2018: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E75
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: It's going to be the first result you want to go to install, and it's going to give you the instructions on how to install it.

### Source 2019: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E76
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So here is for windows.

### Source 2020: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E77
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: You can see the binaries for that.

### Source 2021: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E78
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So you got amd64 and i686.

### Source 2022: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E79
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So whatever architecture you're using we're going to do amd64 I'm going to download that.

### Source 2023: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E80
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: And after it's downloaded I can just open that up and run it.

### Source 2024: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E81
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: And so it's going to do a little initial setup for us.

### Source 2025: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E82
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: All right.

### Source 2026: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E83
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: We're going to accept the terms in the license agreement and hit install.

### Source 2027: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E84
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: If you get a little pop up just go ahead and hit yes okay.

### Source 2028: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E85
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So we can see that vagrant finished installing.

### Source 2029: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E86
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So I'm going to hit finish.

### Source 2030: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E87
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: And you're going to see that after you hit finish it's going to ask you to restart your computer for it to actually take effect.

### Source 2031: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E88
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So we're going to go ahead and hit yes.

### Source 2032: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E89
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So we can restart now.

### Source 2033: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E90
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: And then I'll see you guys after my computer reboots.

### Source 2034: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E91
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: Okay.

### Source 2035: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E92
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So after your computer rebooted you should have vagrant installed.

### Source 2036: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E93
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: And what you want to do is open up your terminal.

### Source 2037: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E94
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So I'm just going to search for my terminal and I'm going to actually select, um I'm actually going to change to command prompt.

### Source 2038: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E95
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: I don't think it should matter.

### Source 2039: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E96
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: Um, but I just like I prefer using command prompt versus PowerShell.

### Source 2040: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E97
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: And I'm going to just zoom in for you guys.

### Source 2041: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E98
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: And what we want to do is we want to make sure that vagrant was installed properly.

### Source 2042: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E99
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So I'm going to say vagrant dash dash help.

### Source 2043: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E100
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So if this runs and actually instead of dash dash help I can just say vagrant dash dash version.

### Source 2044: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E101
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: And this is going to spit out what version of vagrant we installed.

### Source 2045: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E102
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: And as you can see, we installed vagrant version 2.4.6.

### Source 2046: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E103
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: This confirms that we have installed vagrant, um, and everything is working as it should.

### Source 2047: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E104
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: Now, the reason why we installed vagrant is to automate the process of provisioning all of the virtual machines that we need, so that we can actually run and use Kubeadm to install a Kubernetes cluster.

### Source 2048: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E105
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So we can provide you with a vagrant file, which is the configuration for vagrant that will automatically do that for you.

### Source 2049: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E106
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: And that's what makes vagrant so amazing and so simple to work with, is that we can just share a file.

### Source 2050: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E107
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: You can run one command, it's going to spin up an entire environment for you automatically.

### Source 2051: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E108
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So we have this repository here.

### Source 2052: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E109
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: And what we want to do is inside this repository.

### Source 2053: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E110
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: If you go under cube clusters under VirtualBox you will see the configuration.

### Source 2054: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E111
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: Um the vagrant configuration.

### Source 2055: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E112
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: This is the vagrant file that we're interested in.

### Source 2056: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E113
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: And you can see it's going to do a whole bunch of things, but ultimately it's going to provision a couple of virtual machines.

### Source 2057: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E114
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: It's going to give them specific IP addresses.

### Source 2058: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E115
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: And it's going to give you, you know, one virtual machine that's meant for you for your master node.

### Source 2059: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E116
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: And then you've got a couple of worker nodes.

### Source 2060: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E117
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So we're just going to use this file.

### Source 2061: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E118
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So what we're going to do is I'm going to go back to here and I'm going to grab the URL.

### Source 2062: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E119
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: And we're going to perform a git clone.

### Source 2063: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E120
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So I'm going to say git clone here.

### Source 2064: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E121
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So it's going to pull all of the code from that repository onto my local machine so that we can actually use that vagrant file.

### Source 2065: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E122
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: And that was not the command I wanted to run.

### Source 2066: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E123
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: We'll say git clone, paste that URL and we're going to copy it to the current directory.

### Source 2067: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E124
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So we've pulled all of the source code onto our local machine.

### Source 2068: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E125
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: And what we're going to do is we're going to navigate to that folder the kube ADM cluster and then go under VirtualBox.

### Source 2069: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E126
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So I'll say CD kube ADM cluster and then CD and we will go to VirtualBox.

### Source 2070: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E127
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: Now before we proceed any further we have to make sure VirtualBox is running.

### Source 2071: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E128
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So remember VirtualBox is the hypervisor that actually runs our virtual machines.

### Source 2072: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E129
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: What's going to happen is vagrant will actually connect to VirtualBox and create your virtual machines automatically.

### Source 2073: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E130
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So instead of us going one by one and creating it, it's going to do it automatically and it's going to do it based off of what you've configured inside the vagrant file.

### Source 2074: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E131
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So all we have to do at this point with VirtualBox up and running, all we have to do to create everything that we've provided for you is make sure you're in the directory where this vagrant file is.

### Source 2075: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E132
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: And all you have to do is just say vagrant up.

### Source 2076: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E133
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: And so what it's going to do now is it's going to provision a three node cluster.

### Source 2077: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E134
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: Well it's not going to provision Kubernetes, but it's going to provision three VMs automatically for you.

### Source 2078: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E135
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: And at that point you'll be able to connect to them and then run them like any other Linux machine.

### Source 2079: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E136
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: Now you might get a pop up like this.

### Source 2080: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E137
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So just go ahead and hit yes.

### Source 2081: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E138
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: And so you can see here it's bringing up a virtual machine called Control Plane.

### Source 2082: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E139
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: You can see here that it's bringing up a machine called node one.

### Source 2083: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E140
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: And you can see here it's bringing up a machine called node two.

### Source 2084: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E141
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So it's going to spin up three virtual machines.

### Source 2085: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E142
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: See once again control plane node and two worker nodes.

### Source 2086: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E143
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: And we're just going to wait for it to go ahead and do that.

### Source 2087: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E144
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: And if you want you can actually take a look here.

### Source 2088: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E145
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: And you can see that it's physically creating a virtual machine for you.

### Source 2089: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E146
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So you've got one here and you're going to see that there's going to be three populated.

### Source 2090: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E147
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: And it's doing this automatically for you.

### Source 2091: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E148
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: That's the great part about vagrant.

### Source 2092: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E149
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: It's going to automate this for you.

### Source 2093: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E150
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So we just provide the file.

### Source 2094: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E151
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So now all we have to do is just wait.

### Source 2095: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E152
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: And then once all of this is done, we can then connect to those virtual machines and get started on working with them.

### Source 2096: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E153
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: Okay.

### Source 2097: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E154
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So we can see at this point that it's completed.

### Source 2098: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E155
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: And if we just take a look at the logs we can see VM build complete.

### Source 2099: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E156
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: That's what you want to see.

### Source 2100: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E157
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: You want to make sure that there's no errors.

### Source 2101: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E158
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: If there's some sort of error just go ahead and run a vagrant.

### Source 2102: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E159
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: Destroy F that'll delete everything.

### Source 2103: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E160
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: And then run a vagrant up again.

### Source 2104: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E161
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: And that's going to try to rebuild it.

### Source 2105: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E162
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: And if there's some sort of error, the logs are usually fairly helpful.

### Source 2106: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E163
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: And you can kind of debug by taking a look at the error messages that it's outputting.

### Source 2107: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E164
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: But at this point, once it's done, what we want to do is we want to run this command vagrant status.

### Source 2108: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E165
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: And what this is going to do is it's going to show us all of the virtual machines that vagrant created.

### Source 2109: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E166
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: And we can see here we've got three nodes.

### Source 2110: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E167
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: We've got a control plane node, we've got node one and node two.

### Source 2111: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E168
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So three virtual machines.

### Source 2112: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E169
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: And if we take a look at VirtualBox, you can see it created three virtual machines.

### Source 2113: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E170
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So that's all it did.

### Source 2114: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E171
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: It just automated this process.

### Source 2115: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E172
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So we didn't have to manually deploy three ubuntu virtual machines.

### Source 2116: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E173
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So how do we connect to these virtual machines.

### Source 2117: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E174
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: Well it's really easy.

### Source 2118: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E175
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: You just do vagrant SSH and then the name of the virtual machine.

### Source 2119: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E176
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So if I want to connect to the control plane node I'll do control plane.

### Source 2120: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E177
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: And you can see we're now connected to the control plane virtual machine.

### Source 2121: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E178
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: And for the rest of this demo what I will do or in the next upcoming video, when we actually go through the whole process of deploying and installing a cluster using cube ADM, I'm going to have three tabs, one for each one of the nodes.

### Source 2122: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E179
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So the top one we've already connected to the control plane.

### Source 2123: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E180
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So I'll just rename that as control plane.

### Source 2124: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E181
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: Then this one will be node one.

### Source 2125: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E182
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: And I will have to change into that directory.

### Source 2126: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E183
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: And I'll do a vagrant.

### Source 2127: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E184
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: SSH!

### Source 2128: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E185
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: And, uh, what was the name of the node?

### Source 2129: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E186
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: I believe it was just called node one.

### Source 2130: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E187
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: Node one.

### Source 2131: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E188
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: And while that's running, I'm going to set up the last terminal.

### Source 2132: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E189
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So this will be for node two.

### Source 2133: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E190
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: Once again we'll move into the proper folder.

### Source 2134: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E191
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: And this one will be node two.

### Source 2135: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E192
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: Okay.

### Source 2136: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E193
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So at this point we should have a connection to all three nodes.

### Source 2137: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E194
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So our control plane node node one and node two.

### Source 2138: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E195
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: And they're going to be labeled accordingly.

### Source 2139: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E196
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So if you're going to follow along make sure you know which one I'm currently connected to.

### Source 2140: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E197
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: And also before we even move on to the the next step, I recommend you do an iPad just to take a look at the IP addressing that's been set up.

### Source 2141: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E198
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So you can see the control plane node has an IP address of 192.168.86.32.

### Source 2142: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E199
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: And node one has a dot 33 and node two has. a dot 34.

### Source 2143: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E200
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: Now, one thing to keep in mind with, and this is specific to vagrant, is that you'll see that the first interface, Ep03, has an IP address of 1.0.2.15.

### Source 2144: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E201
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: Same thing with node 110 zero 215.

### Source 2145: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E202
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: Same thing with node two.

### Source 2146: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E203
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: This is specific to vagrant.

### Source 2147: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E204
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: This is vagrant.

### Source 2148: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E205
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: Uses this internally.

### Source 2149: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E206
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So just ignore this interface.

### Source 2150: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E207
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: It's not really relevant to what we're doing.

### Source 2151: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E208
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: We're going to be using this interface for communication.

### Source 2152: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E209
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: Just something to keep in mind.

### Source 2153: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E210
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: Just a little quirk that comes with using vagrant.

### Source 2154: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E211
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: And as I stated it's really easy to tear down your environment.

### Source 2155: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E212
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So I'm just going to open up another tab and show you guys how to tear it down.

### Source 2156: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E213
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: And I'm going to once again move into the clusters and then VirtualBox.

### Source 2157: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E214
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: And then what we want to do is we want to do vagrant destroy and then dash F for force.

### Source 2158: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E215
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So that's going to go ahead and delete and tear down all of your virtual machines.

### Source 2159: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E216
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: So you could spin up your environment with basically one command vagrant up.

### Source 2160: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/059_Demo - Setting Up Virtual Machines on Windows.extraction.md::E217
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 059_Demo - Setting Up Virtual Machines on Windows.txt
- Evidence: And you can destroy it with a single command which is vagrant destroy dash F.

### Source 2161: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E1
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: So in this video, what we're going to do is we're going to set up three virtual machines on a mac OS operating system using Apple silicon.

### Source 2162: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E2
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: So that's going to be one of the M series chips.

### Source 2163: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E3
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: I'm going to show you guys how to spin up three virtual machines, so that we can then install a Kubernetes cluster using Kubernetes.

### Source 2164: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E4
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: So we need three servers.

### Source 2165: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E5
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: And the easiest way to do that is by using virtualization.

### Source 2166: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E6
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: So we can just run it on our local machine.

### Source 2167: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E7
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: We don't need to install or we don't need to purchase other physical equipment or hardware servers or other computers.

### Source 2168: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E8
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: We can run it all on our local machine.

### Source 2169: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E9
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: That way you guys can quickly and easily follow along.

### Source 2170: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E10
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: Now, keep in mind, if you're running on a mac that has only eight gigs of Ram, you will see that the script that you run will actually only deploy a single server, and that's just due to the memory limitations of your machine.

### Source 2171: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E11
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: With eight gigs, it doesn't give us a lot of flexibility to spin up multiple VMs, so the script will automatically detect that you have eight gigs only, and it'll only deploy a single node for you, and then you're basically going to deploy Kubernetes onto a single node instead of doing it on three different nodes.

### Source 2172: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E12
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: So to do that we need to use a tool called Multipass.

### Source 2173: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E13
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: So Multipass allows us to create a ubuntu based virtual machines very easily.

### Source 2174: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E14
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: And so what you want to do is you want to go to Canonical.com Multipass and you know, you want to go to install.

### Source 2175: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E15
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: And here it's going to give us the instructions on how to get started.

### Source 2176: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E16
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: Uh, depending on what operating system we're using, this video is focusing on macOS.

### Source 2177: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E17
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: The last video I showed you guys how to set up virtual machines using windows, which is a little bit different for Mac.

### Source 2178: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E18
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: We're going to be using Multipass.

### Source 2179: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E19
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: And so it says to install um we're going to use Mac here.

### Source 2180: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E20
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: So download Multipass for macOS.

### Source 2181: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E21
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: We're going to go ahead and download that.

### Source 2182: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E22
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: You can see it's going to get downloaded.

### Source 2183: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E23
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: And once it's downloaded we can then run the installer.

### Source 2184: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E24
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: Okay.

### Source 2185: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E25
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: So the installer is here we're going to hit continue.

### Source 2186: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E26
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: We're going to hit continue.

### Source 2187: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E27
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: Just keep hitting continue.

### Source 2188: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E28
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: Agree to the terms of service.

### Source 2189: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E29
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: Then we're going to install.

### Source 2190: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E30
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: It's going to ask for your password.

### Source 2191: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E31
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: And then it's going to proceed with the installation.

### Source 2192: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E32
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: Okay.

### Source 2193: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E33
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: So now we could see installation was successful.

### Source 2194: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E34
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: So we can go ahead and close this out.

### Source 2195: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E35
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: And if you want you can then move that installer file to the trash can.

### Source 2196: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E36
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: Okay.

### Source 2197: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E37
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: So at this point we've installed multi-pass.

### Source 2198: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E38
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: Let's just make sure that it's working.

### Source 2199: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E39
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: So what we want to do is we want to open up the terminal app.

### Source 2200: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E40
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: So if you just go to spotlight and search for terminal app, you can use that if you have a different terminal like in my case I have Iterm as well.

### Source 2201: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E41
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: You can use that.

### Source 2202: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E42
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: It doesn't really matter.

### Source 2203: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E43
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: Just open up your terminal emulator and we'll make this a little bit bigger for you guys.

### Source 2204: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E44
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: And what we need to do is just type in Multipass dash dash version.

### Source 2205: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E45
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: If you get a response back you can see the version that we're using which is 1.15.1.

### Source 2206: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E46
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: Um, so that's going to confirm that Multipass was successfully installed.

### Source 2207: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E47
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: So Multi-pass is going to help us spin up ubuntu based virtual machines that are going to act as our Kubernetes node.

### Source 2208: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E48
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: And what we've done is if you go to the GitHub page here, so if you go to this repository, you're going to see that we've set it up so that it's going to be as easy and as simple as possible for you guys to follow along with our demonstration, because we've provided a script that's going to use Multipass and spin up a cluster or a couple of servers for you that we can then use to install kubectl.

### Source 2209: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E49
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: So if you go to kube clusters and you go under Apple silicone, you're going to see that there's a couple of scripts here.

### Source 2210: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E50
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: And so these scripts are going to be what's responsible for deploying and deleting virtual machines.

### Source 2211: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E51
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: So if you want to deploy a setup so that you can use to follow along, you just run this script here.

### Source 2212: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E52
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: And that's going to use Multipass to configure the network provision a couple of virtual machines so that we can then connect to them.

### Source 2213: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E53
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: So let's go ahead and clone this GitHub repository.

### Source 2214: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E54
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: And so to do that I'm going to go back here.

### Source 2215: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E55
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: We're going to copy this.

### Source 2216: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E56
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: And I'm going to go to in this case VS code I don't need this.

### Source 2217: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E57
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: And I'm just going to do a git clone.

### Source 2218: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E58
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: We're going to clone it to the current directory.

### Source 2219: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E59
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: Okay.

### Source 2220: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E60
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: So we've now pulled in all of that source code.

### Source 2221: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E61
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: And remember it's the script is going to be in the following file.

### Source 2222: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E62
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: So under kube ADM clusters under Apple Silicone.

### Source 2223: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E63
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: And that's where you want to go.

### Source 2224: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E64
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: So I'm going to CD into that directory.

### Source 2225: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E65
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: And we're just going to run that script which is called Deploy Virtual machines.

### Source 2226: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E66
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: So I'll do a dot slash deploy virtual machines.

### Source 2227: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E67
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: And we're going to let it do all of the work for us.

### Source 2228: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E68
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: Okay.

### Source 2229: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E69
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: So now we can see that the script has finished running, so it should have created three virtual machines for us.

### Source 2230: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E70
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: And we can confirm that by running Multi-path list.

### Source 2231: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E71
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: And that's going to list out the three nodes or the three servers that Multipass created for us.

### Source 2232: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E72
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: So we can see here that we've got three nodes, we've got the control plane node, we've got node one, and we've got node two.

### Source 2233: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E73
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: And we could see the IP addressing information as well as what image was used, which was a ubuntu 22.04 LTS image.

### Source 2234: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E74
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: Now if you want to connect to one of these nodes or one of these servers, all you have to do is type in Multipass shell and then the name of the server.

### Source 2235: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E75
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: So if I want to connect to the control plane node, I can run this command.

### Source 2236: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E76
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: And I'm now connected to the control plane node.

### Source 2237: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E77
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: So what you're going to see is that I'm in this demo going to have three terminals.

### Source 2238: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E78
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: And this one is going to be renamed to be Control plane.

### Source 2239: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E79
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: And then here let me do the Multi-pass list.

### Source 2240: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E80
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: And then now I could do Multi-pass shell node zero one.

### Source 2241: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E81
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: So this one will be node zero one.

### Source 2242: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E82
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: And then we can open up one more terminal.

### Source 2243: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E83
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: And I'm going to do a multi-pass shell to node zero two.

### Source 2244: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E84
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: And we will rename that accordingly as well.

### Source 2245: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E85
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: So now I've got a three servers control plane node one and node two.

### Source 2246: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E86
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: This is what we're going to install Kubernetes on.

### Source 2247: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E87
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: And so just understand that's what each of these three terminals are for.

### Source 2248: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E88
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: Now I just want to quickly go over the IP addressing real quick.

### Source 2249: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E89
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: So if I go to my control plane node or any of the nodes I can do iPad, you're going to see that there's always going to be two interfaces.

### Source 2250: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E90
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: There's this interface here and then this interface here.

### Source 2251: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E91
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: Ignore the first one.

### Source 2252: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E92
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: This is not what we're going to be using for communication.

### Source 2253: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E93
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: It's going to be using this EMP 0S2.

### Source 2254: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E94
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: So the 2168.86.14.

### Source 2255: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E95
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: And I'm going to run this command on all of them.

### Source 2256: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E96
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: And so you're going to see that there's going to be once again two interfaces.

### Source 2257: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E97
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: We want the second one.

### Source 2258: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E98
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: That's what we're going to use to communicate between all of the different nodes.

### Source 2259: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E99
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: And you'll see that the script has automatically set up host entries for your different servers.

### Source 2260: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E100
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: So if I do cat Etsy slash hosts, you're going to see that the control plane node can be accessed by the Dot 8640, which is my address.

### Source 2261: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E101
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: Node one is going to be the dot 41, which is node one here dot 41.

### Source 2262: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E102
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: And then node two is the dot 42.

### Source 2263: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E103
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: So you know, anytime in your you know, as we're following along and setting up kube adm, you can either reference the IP addresses or you can use the host entries that we've created and set up on all of the three servers.

### Source 2264: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E104
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: So that's basically everything I wanted to show you guys when it comes to setting up servers on your Mac, we've got everything up and running.

### Source 2265: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E105
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: We should be good to go.

### Source 2266: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E106
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: One last thing I want to show you guys actually, is that if you go to the the repository that I showed you guys, what you want to do is you want to go under cube, atrium, apple silicone and then docks.

### Source 2267: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E107
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: And then if you look at the documentation you go under compute resources.

### Source 2268: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E108
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: It's going to show you, you know, once you're done with following the demo, you're going to want to know how to destroy all the virtual machines.

### Source 2269: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E109
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: So tear down the environment.

### Source 2270: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E110
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: And we have a script for that which is delete virtual machines SSH which you see we've got this delete virtual.

### Source 2271: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E111
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: So all you have to do is just open up a new tab and just do dot slash.

### Source 2272: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E112
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: All you have to make sure you change into that folder.

### Source 2273: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E113
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: Go under Apple Silicone.

### Source 2274: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E114
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: And then you could do dot slash delete virtual machines.

### Source 2275: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E115
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: And then after you do that it's going to give you a one last instruction.

### Source 2276: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E116
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: Because that script can't do one thing which is clean stale DHP leases.

### Source 2277: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E117
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: So to do that you just go to this file right here and you delete basically all of the entries in that file.

### Source 2278: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E118
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: But you should be good to go.

### Source 2279: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/060_Demo - Setting Up Virtual Machines on Mac.extraction.md::E119
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac.txt
- Evidence: So in the next video we can actually get started with deploying a Kubernetes cluster using cube ADM.

### Source 2280: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E1
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: All right.

### Source 2281: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E2
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So if you've been following along, you should now have three servers that we're going to use as nodes for our Kubernetes cluster.

### Source 2282: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E3
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And just to show you my environment, it's going to be exactly where we left off when it came to initializing the virtual machines.

### Source 2283: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E4
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: I've got a tab for the control plane that's going to represent the control plane node for Kubernetes.

### Source 2284: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E5
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: We've got node one which is going to be a worker node.

### Source 2285: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E6
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And then node two which is going to be another worker node.

### Source 2286: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E7
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So that's what we have.

### Source 2287: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E8
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And so now we can actually get started with installing Kubernetes using cube ADM.

### Source 2288: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E9
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So there's a couple of things that I want to cover documentation wise.

### Source 2289: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E10
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So if you go to the repo that we have for the course, you want to go under cube ADM clusters and you want to go under generic.

### Source 2290: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E11
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And here you're going to have a couple of files that's going to basically walk you through exactly what you need to do to install a Kubernetes cluster using cube ADM.

### Source 2291: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E12
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So what you can do is you can just follow along just by going to this documentation.

### Source 2292: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E13
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: But on top of that, I also want to show you guys where we got these instructions from.

### Source 2293: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E14
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So it's going to be a combination of several different pages in the Kubernetes documentation.

### Source 2294: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E15
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: But what you want to do is you want to go under getting started production environments, installing Kubernetes with deployment tools, bootstrapping clusters with cube ADM.

### Source 2295: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E16
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And then you select creating a cluster with kube ADM.

### Source 2296: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E17
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: Now if you are going to be creating a cluster with multiple control plane nodes, there's going to be a separate document which is creating a highly available cluster with kube ADM.

### Source 2297: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E18
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: It's going to show you how to set up a cluster with multiple control plane nodes.

### Source 2298: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E19
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: You'll see that the steps are almost identical, except there's going to be one extra step when you want to add in a second control plane node to the cluster.

### Source 2299: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E20
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: Not that much different.

### Source 2300: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E21
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: We're going to do just a single control plane node.

### Source 2301: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E22
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So we're going to follow this file right here.

### Source 2302: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E23
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And then on top of that you're going to also want to open up the installing kube ADM page as well.

### Source 2303: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E24
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So this is going to walk you through how to install kube ADM which is just using the the respective or installing the respective packages for kube adm kubelet and kubectl and so on.

### Source 2304: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E25
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So those are going to be the the two main files that we're going to go through.

### Source 2305: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E26
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And I'm going to show you as we go through our document where each step is kind of listed in the documentation.

### Source 2306: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E27
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: Because when you're taking the certification, you're not going to have access to this repo.

### Source 2307: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E28
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: You're going to have access to the documentation only.

### Source 2308: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E29
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So you're going to want to make sure you know where all of these instructions actually live.

### Source 2309: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E30
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: All right.

### Source 2310: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E31
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So if we go to the creating a cluster with cube ADM, it's going to first give you some prerequisites like what are the specs of your machine.

### Source 2311: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E32
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: You can see there's a there's certain Ram and CPU requirements.

### Source 2312: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E33
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: You're going to want to make sure that you meet these.

### Source 2313: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E34
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: If you install the virtual machines as per the previous demos, you should already have three virtual machines that meet the minimum requirements.

### Source 2314: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E35
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So if we then go to the instructions here, the first thing that we have to do is we have to install a container runtime.

### Source 2315: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E36
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: Remember Kubernetes utilizes container runtimes to actually spin up containers.

### Source 2316: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E37
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So you have to install them.

### Source 2317: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E38
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And so you're going to just right click here and open this up.

### Source 2318: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E39
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And you're going to see the instructions for installing Stalling one of the supported container runtimes.

### Source 2319: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E40
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: We're going to be using container D in this case.

### Source 2320: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E41
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: But if you want to set up your cluster however you'd like, you can use one of the other container runtimes.

### Source 2321: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E42
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So first things first there's going to be some configuration that you need to do like enabling IPv4 packet forwarding.

### Source 2322: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E43
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And so if we go back to the document here you're going to see that.

### Source 2323: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E44
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: First of all we're going to just do a sudo apt update.

### Source 2324: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E45
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And we're going to install some tools that are most likely already on your system.

### Source 2325: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E46
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: But just in case they're not then we're going to go ahead and install them.

### Source 2326: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E47
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So things like curl CA certificates and things like that.

### Source 2327: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E48
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So you're going to need these regardless.

### Source 2328: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E49
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So we're going to copy this and we're going to run this on all three nodes.

### Source 2329: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E50
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So I'm going to just paste this.

### Source 2330: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E51
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And you'll see that all of the commands that we run on this page here, you're going to run them on all of the nodes.

### Source 2331: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E52
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So if you have the ability to run commands on multiple terminals, then you could just have a single command get sent to all of the terminals.

### Source 2332: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E53
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So I'm just going to manually paste them in one by one.

### Source 2333: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E54
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: Then the next thing that we have to do is we have to set up the kernel modules, as well as set up the kernel parameters like enabling IP forwarding.

### Source 2334: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E55
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So once again that's basically the instructions that are listed here.

### Source 2335: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E56
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So I'm just going to copy this.

### Source 2336: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E57
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And run this on all of the nodes once again.

### Source 2337: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E58
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And then we can then set the required kernel parameters.

### Source 2338: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E59
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So this is once again going to enable IPV four and a few other things.

### Source 2339: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E60
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: All right.

### Source 2340: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E61
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And then now we can install the container runtime.

### Source 2341: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E62
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So if you go back to the documentation right it's going to give you instructions on how to specifically install container D which will you know you can you go to the GitHub page.

### Source 2342: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E63
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And I think if we go up here It's like container D.

### Source 2343: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E64
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: This will give you some information on getting started with container D you can open up that tab.

### Source 2344: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E65
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: This is going to give you all the instructions on working with container D.

### Source 2345: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E66
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: But we're going to just keep it simple.

### Source 2346: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E67
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And we're just going to do a sudo apt install container d.

### Source 2347: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E68
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And you're going to once again need to run this on all of your nodes.

### Source 2348: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E69
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: Now this next step is going to be a little confusing.

### Source 2349: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E70
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: It says configure the container runtime to use the systemd secrets.

### Source 2350: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E71
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So what this is, is we're actually going to go to the documentation once again.

### Source 2351: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E72
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And I'm going to just maximize this so we can see it a little bit better.

### Source 2352: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E73
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: I want you to take a look at this and I definitely recommend you read this.

### Source 2353: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E74
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: But there's two different cgroup drivers.

### Source 2354: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E75
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And you know, cgroup is the technology or the feature that allows us to put in, you know, how much resources a specific pod or container can use.

### Source 2355: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E76
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So if we want to say like, oh, this pod should only have access to X amount of memory.

### Source 2356: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E77
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: It's using a feature called Cgroups.

### Source 2357: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E78
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And there's different drivers that it supports.

### Source 2358: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E79
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: There's two different drivers.

### Source 2359: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E80
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: There's cgroups and there's systemd.

### Source 2360: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E81
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: Now if you're using a systemd init system, then you need to make sure that you use the systemd cgroup driver.

### Source 2361: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E82
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And so you have to do this in two different locations.

### Source 2362: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E83
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: First you have to configure your container runtime to use the proper driver.

### Source 2363: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E84
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And then on top of that you have to configure the Kubelet process to use the proper driver.

### Source 2364: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E85
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: Now what's what's good about the this is actually kind of a little bit old actually.

### Source 2365: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E86
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: Um, you'll see that in the newer Kubelet versions by default it's going to be using systemd.

### Source 2366: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E87
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So you don't have to change anything for kubelet.

### Source 2367: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E88
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: If you're using even somewhat modern version of Kubelet or Kubernetes, it's going to be using systemd already, so you don't have to configure anything, but you do have to configure the systemd cgroup driver for your container runtime.

### Source 2368: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E89
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And so we're going to go to the documentation.

### Source 2369: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E90
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And this is just giving you an example on how to configure the Cgroup driver for Kubelet.

### Source 2370: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E91
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: You can see you can just provide the configuration and specify the secret driver.

### Source 2371: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E92
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: Once again, you can see starting version 1.22 and later when creating a cluster with kube ADM, if the user does not set the secret driver field under configuration, it's going to default to systemd, which is perfect.

### Source 2372: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E93
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: That's what we want.

### Source 2373: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E94
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So let's now configure the systemd screwdriver for our container runtime which is containerd.

### Source 2374: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E95
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So I'm just going to select this.

### Source 2375: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E96
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: It's going to take us down here.

### Source 2376: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E97
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: This is going to show us how to do it.

### Source 2377: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E98
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So to use the systemd screwdriver you're going to have to configure a file.

### Source 2378: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E99
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And the configuration file for containerd is going to be in slash Etsy slash container slash config.toml.

### Source 2379: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E100
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: That's the default location.

### Source 2380: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E101
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: It's going to look for the file.

### Source 2381: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E102
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And then what you have to do is you have to add this line of code here.

### Source 2382: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E103
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So under this plugins here you're going to set systemd group true to equal true.

### Source 2383: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E104
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And it's going to give you some other information like if you want to generate the default configuration for Containerd this generate this config file, you can just run this Containerd config default and then pipe it to that file that's going to generate the default configuration.

### Source 2384: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E105
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And then you can go in and then change the value that you'd like.

### Source 2385: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E106
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: If you look at the command here, it's basically going to do the same thing.

### Source 2386: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E107
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: It's first going to create that folder slash Etsy container D.

### Source 2387: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E108
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: Then it's going to run that container config default command that we just saw here container config default.

### Source 2388: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E109
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And it's going to update that value.

### Source 2389: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E110
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So it's going to swap that systemd secret value from false to true.

### Source 2390: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E111
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: That's that whole command.

### Source 2391: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E112
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So it's doing it all in one command.

### Source 2392: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E113
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So you don't have to manually go in and change it.

### Source 2393: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E114
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So I'm going to just copy this.

### Source 2394: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E115
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And we're going to run this once again on all nodes.

### Source 2395: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E116
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And uh it looks like.

### Source 2396: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E117
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: Oh I accidentally copied the curly brace at the end.

### Source 2397: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E118
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So that's why we get an error.

### Source 2398: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E119
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: But that's not a problem.

### Source 2399: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E120
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: Um, let's just make sure we don't copy that again.

### Source 2400: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E121
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And then paste this here.

### Source 2401: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E122
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And so just once again just to show you exactly what happened.

### Source 2402: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E123
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: If I do a cat four slash Etsy container de config.toml and then we grep for, I think it's, uh, let's do a dash I see group.

### Source 2403: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E124
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: Right.

### Source 2404: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E125
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: You could see system D, c group equals true.

### Source 2405: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E126
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And yeah that's all we need to do in this case.

### Source 2406: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E127
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: We've got that set up.

### Source 2407: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E128
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: We've set up the proper cgroup driver.

### Source 2408: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E129
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: We can now go to the next step which is we have to then after you make changes you need to make sure that you restart container D.

### Source 2409: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E130
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So I'll copy this paste it in.

### Source 2410: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E131
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: Now the next thing that we have to do is we're going to install kube adm.

### Source 2411: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E132
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So we need to make sure we get the latest version or whatever version that we want to install.

### Source 2412: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E133
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: You want version 1.33, then you have to make sure you download it the proper version of that.

### Source 2413: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E134
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: If you want to just grab what is the latest version of Kubernetes, you can just run this command and it's going to store the latest version in a environment variable called Kube latest.

### Source 2414: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E135
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So we're going to just do that just to simplify the commands moving forward.

### Source 2415: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E136
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And so once again all we did was create an environment variable that's going to grab the latest version.

### Source 2416: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E137
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So if I do an echo and do kube underscore latest you can see version 1.33.

### Source 2417: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E138
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So it grabbed the latest version which was that.

### Source 2418: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E139
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And I'm going to run the same command on the other two guys.

### Source 2419: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E140
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And at this point um, if we actually go back to the documentation.

### Source 2420: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E141
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: Right.

### Source 2421: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E142
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: We're going to be in the installing kube ADM page.

### Source 2422: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E143
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So we're looking at version 1.33.

### Source 2423: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E144
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And this is going to give you the same instructions on how to install kube adm kubelet and kubectl, which we want on our machines.

### Source 2424: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E145
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And so at this point you're going to set up the APT repository, set up the public signing keys.

### Source 2425: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E146
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And then at this point you can just do a sudo apt install kubelet kubeadm kubectl.

### Source 2426: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E147
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: That's all we're doing at the moment.

### Source 2427: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E148
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So let me grab those commands.

### Source 2428: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E149
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So we're going to set up the public signing key.

### Source 2429: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E150
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And then we're going to add the Kubernetes repository.

### Source 2430: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E151
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And then we can go ahead and do an update.

### Source 2431: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E152
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And then we're going to install the kubelet to kube adm and kubectl.

### Source 2432: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E153
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: Technically you don't need to install kubectl on all of the nodes if you don't want to have the tool on all of the nodes, you would just you would at least need it on the control plane node.

### Source 2433: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E154
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: But you do need to install the kubelet and kube adm on all three nodes.

### Source 2434: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E155
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So let's copy that.

### Source 2435: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E156
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And then optionally if you want to install the crystal which will allow you to see the containers running, you can use that as well.

### Source 2436: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E157
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: Um that's going to be in like troubleshooting scenarios where the kube API server is down and you want to be able to check if a container is running you.

### Source 2437: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E158
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: Obviously, if the API server is down, kubectl is not going to work.

### Source 2438: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E159
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So you can take a look at the actual containers themselves.

### Source 2439: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E160
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: If you want to run this or install this, then you'll have access to that.

### Source 2440: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E161
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: For those specific troubleshooting scenarios.

### Source 2441: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E162
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: This is purely optional.

### Source 2442: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E163
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: You don't need to install this, but we're going to go ahead and install it anyways.

### Source 2443: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E164
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: Now the last step here is very specific to our environment, and I want to explain the issue that we're going.

### Source 2444: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E165
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: To have and I'm going to do that by doing an iPad.

### Source 2445: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E166
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: Okay.

### Source 2446: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E167
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So when I do an iPad and we can do this on any of the nodes, uh, whether you're using Multi-pass on Mac or you're using Vagrant on Windows, there's going to be a interface that gets created.

### Source 2447: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E168
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: This first interface, this interface is not being used by our servers for communication.

### Source 2448: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E169
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: This is more an internal interface that's used by the automation tool.

### Source 2449: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E170
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So if you're using vagrant, that first interface, whatever IP address here, it's going to be the same across all of the nodes.

### Source 2450: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E171
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So really what we're doing is I want to highlight that all of the servers are going to use this interface.

### Source 2451: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E172
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: The second one this this IP address, the dot 49.

### Source 2452: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E173
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: Um on the control plane, it's the dot 48.

### Source 2453: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E174
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: It's going to be using this interface for communication.

### Source 2454: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E175
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And you'll find that by default in our environment, whether we use vagrant or Multipass, you're going to see that if I do an IP route, you're going to see that we have a and I'm going to make this a little bit bigger.

### Source 2455: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E176
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: You can see we have a default route out the first interface.

### Source 2456: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E177
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And so you can see this default route pointing out the first interface.

### Source 2457: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E178
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And this can create some problems because when we go to set up Kubernetes uh the interface that it ultimately uses.

### Source 2458: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E179
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So like if you're setting up kubelet process or if you're setting up the API server, it's going to use that first interface.

### Source 2459: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E180
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: Which we don't want.

### Source 2460: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E181
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: We want it to use the second interface here for all communication.

### Source 2461: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E182
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: But it's going to default to this one because that's how it's accessing the internet at the moment.

### Source 2462: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E183
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So this is just going to say it's going to tell the Kubelet process specifically to use the IP address of the second interface.

### Source 2463: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E184
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: We want to use this one for Kubernetes communication.

### Source 2464: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E185
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And all of our virtual machines should already have an environment variable called primary IP.

### Source 2465: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E186
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So if I do primary underscore IP that's going to print out the IP address of the second interface.

### Source 2466: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E187
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And so this is basically telling Kubelet to bind to this interface to use this interface.

### Source 2467: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E188
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And that's important because we don't want it to use the first interface.

### Source 2468: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E189
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: This is just used for internal communication for our automation tool.

### Source 2469: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E190
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So that's why we have to add this extra config here.

### Source 2470: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E191
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: It's just basically telling Kubelet pass in the dash dash node IP flag when you start up so that it binds to the second address.

### Source 2471: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E192
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And same thing goes for node one.

### Source 2472: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E193
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: It's going to bind to this address and not this address.

### Source 2473: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E194
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So let's copy this.

### Source 2474: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E195
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And let's run this on all of the nodes.

### Source 2475: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E196
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And we should be good.

### Source 2476: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E197
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So now inside this GitHub page go to the next page which is setting up the control plane.

### Source 2477: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E198
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So at this point, if we go back to the install the installation page and we don't want to go to, we want creating a cluster with kube ADM, we're going to be at the following stage which is initializing your control plane node.

### Source 2478: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E199
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So the first thing that you have to do once we've set up IP forwarding, we've installed the container runtime and done everything we need to do.

### Source 2479: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E200
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: The next thing that we have to do is we have to set up the control plane node first.

### Source 2480: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E201
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: You always do the control plane node first.

### Source 2481: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E202
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And so you can see here it's just explaining what the control plane node is.

### Source 2482: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E203
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And if you have plans to upgrade it, this single control plane node to a high availability node, it's just basically recommending an extra flag.

### Source 2483: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E204
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: But the command to initialize is going to be kube adm init.

### Source 2484: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E205
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So you do kube adm init.

### Source 2485: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E206
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And once again by default if I go to my control plane node when I when I show you the interfaces, remember there's two interfaces.

### Source 2486: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E207
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: Once again when I set up the control plane node.

### Source 2487: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E208
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: It's going to by default bind to this address the first interface because that's how we access the internet.

### Source 2488: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E209
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: We don't want that.

### Source 2489: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E210
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: Remember in this environment we want this interface to be used for communication.

### Source 2490: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E211
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So we want the API server to bind to this address.

### Source 2491: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E212
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So we have to pass in an extra flag which is going to be the dash dash control plane endpoint, which is going to be the IP address of this interface.

### Source 2492: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E213
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And it's going to tell all of the downstream servers to use this address instead of this one, because if we don't pass in that flag, it'll just default to this one, which if you're using another environment where you just have one interface, then it'll work out of the box.

### Source 2493: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E214
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: But we have this extra interface that we don't want to use.

### Source 2494: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E215
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So we have to pass in the, uh, sorry, um, I meant to say we need to use this flag.

### Source 2495: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E216
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So the dash dash API server advertise address, this is basically going to tell all of the downstream nodes which address the API server is going to be accessible on.

### Source 2496: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E217
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So we don't want to use this one.

### Source 2497: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E218
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: We want to use this one.

### Source 2498: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E219
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So this is the flag we want to use not this one.

### Source 2499: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E220
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: That was a mistake on my part.

### Source 2500: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E221
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: We want to use this flag here.

### Source 2501: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E222
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And then on top of that, there's going to be a couple of other flags that we want to pass in.

### Source 2502: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E223
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: The other flag is going to be if you want to set the Pod network Cidr to a specific Cidr range, you can pass in this flag.

### Source 2503: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E224
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And you can also do this with the services side arrange as well.

### Source 2504: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E225
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So the final command is just basically cube ADM in it.

### Source 2505: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E226
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And then the specific flags that you ultimately want and the flags that we're going to use is going to look like this.

### Source 2506: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E227
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So we have cube ATM in it.

### Source 2507: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E228
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: We pass in the Pod network Cidr that we want to use, the service Cidr that we want to use.

### Source 2508: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E229
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And then also remember we want to pass in the Dash Dash API server advertise address to be that primary IP.

### Source 2509: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E230
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So remember this if I echo.

### Source 2510: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E231
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: Primary underscore IP that environment variable is just going to point to this interface.

### Source 2511: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E232
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So we have to basically tell all of the other servers what IP address is the API server on and it's going to bind to this address.

### Source 2512: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E233
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So this interface and then these are going to be the pods header.

### Source 2513: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E234
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And the server side arranges.

### Source 2514: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E235
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So I can copy this set those environment variables.

### Source 2515: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E236
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And then at this point we can just copy this command and run this just on the control plane node.

### Source 2516: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E237
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So we'll run that.

### Source 2517: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E238
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And it's going to take a little bit of time.

### Source 2518: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E239
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So we're going to pause this video and I'll touch base with you guys once that's done.

### Source 2519: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E240
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: Now after it's run it's going to give you some instructions.

### Source 2520: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E241
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And most importantly it's going to tell you how to join the worker nodes.

### Source 2521: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E242
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And it's going to give you the special command.

### Source 2522: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E243
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So you want to grab this command, copy it.

### Source 2523: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E244
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And you want to make sure that you paste it into your notes for future use.

### Source 2524: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E245
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So I've got it stored in my notes right here.

### Source 2525: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E246
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And I'm just going to put that off screen for now so that when we go to join the worker nodes, um, we have that command at hand.

### Source 2526: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E247
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: But don't worry, if you lose it, there's a command that you can use to then generate this command again.

### Source 2527: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E248
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So it's not a big deal if you lose it.

### Source 2528: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E249
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: Then on top of that it says to start using your cluster, you need to do the following.

### Source 2529: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E250
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So what we're going to do is we're going to create the cube folder in our home directory.

### Source 2530: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E251
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And when you use the cube adm init command it's actually going to generate a Kubernetes config file for you so that you have all of the credentials for interacting with your Kubernetes cluster.

### Source 2531: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E252
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And that's all going to be stored.

### Source 2532: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E253
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: Um, we're basically just copying that to your home folder so that we can actually use the kubectl utility.

### Source 2533: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E254
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So here we're just going to copy this paste it.

### Source 2534: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E255
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And so now if you did kubectl get node we should see we have one node called control plane.

### Source 2535: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E256
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: We could see status is not ready.

### Source 2536: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E257
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: It's going to say not ready because we haven't installed a CNI plugin.

### Source 2537: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E258
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: Once you install CNI plugin it'll move to a ready state.

### Source 2538: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E259
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: We can see that the role is control plane, and we don't see any worker nodes because we haven't configured them to join yet.

### Source 2539: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E260
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: Okay.

### Source 2540: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E261
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So we've done that.

### Source 2541: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E262
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: Um, we copied the file here.

### Source 2542: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E263
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: Then you have to install your CNI plugin.

### Source 2543: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E264
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So I'm going to install a plugin called calico.

### Source 2544: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E265
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: I'm going to use calico.

### Source 2545: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E266
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: Keep in mind you can use any plugin that you want.

### Source 2546: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E267
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: It doesn't matter which one you use, they should all work if they follow the proper standards.

### Source 2547: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E268
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: We're going to use calico.

### Source 2548: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E269
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And if you want to take a look at the documentation here, you could just go to the page for calico which is at.

### Source 2549: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E270
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: Calico.

### Source 2550: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E271
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And what we want to do is we want to go under installing and upgrading and installing on on premises deployment.

### Source 2551: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E272
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And that's going to have the instructions for actually doing that.

### Source 2552: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E273
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So let's uh copy this.

### Source 2553: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E274
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So the first thing that we have to do is install the operator.

### Source 2554: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E275
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And I'm just hopefully it's large enough for you guys.

### Source 2555: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E276
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: Um, so the first thing is installing the operator and custom resource definitions.

### Source 2556: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E277
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And keep in mind these steps are going to be unique for this specific CNI.

### Source 2557: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E278
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: Every CNI is going to be different.

### Source 2558: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E279
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: You just go to the documentation page for whatever you want to use and just follow it.

### Source 2559: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E280
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: But we're going to just go through um, calico in this case.

### Source 2560: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E281
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So here we're going to run this on the control plane node.

### Source 2561: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E282
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: Then we want to download this config file.

### Source 2562: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E283
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So this is going to be the config for CNI.

### Source 2563: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E284
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: I'm going to paste it.

### Source 2564: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E285
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And it's going to copy a file here to our local machine called Custom Resources dot YAML.

### Source 2565: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E286
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: We're going to open this up.

### Source 2566: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E287
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And this is going to show you the default configurations.

### Source 2567: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E288
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And you can keep most of the default configs.

### Source 2568: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E289
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: But you have to change one thing which is the IP pool.

### Source 2569: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E290
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So this is basically telling calico what is the pod Cidr range.

### Source 2570: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E291
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: Now if you go back to the documentation here and you recall that we set the pod Cidr to be 1244.0.0 16.

### Source 2571: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E292
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So we need to set the same thing accordingly here.

### Source 2572: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E293
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So I'm going to go down and make sure that now calico knows that it's 1244.0.0.

### Source 2573: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E294
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And I believe that is the only thing we need to change.

### Source 2574: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E295
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And at that point we could just do a kubectl create or apply.

### Source 2575: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E296
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And it's going to go ahead and deploy all of the necessary pods and resources for calico to run properly.

### Source 2576: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E297
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: Okay.

### Source 2577: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E298
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So let's just check to see if everything's working.

### Source 2578: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E299
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: Um, so it takes a little bit of time for calico to start up.

### Source 2579: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E300
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: It's going to restart a lot of the control plane components.

### Source 2580: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E301
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So let's do a kubectl get node.

### Source 2581: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E302
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And we can see it hangs.

### Source 2582: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E303
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And that's because once again it's going to be restarting the API server and a few other things.

### Source 2583: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E304
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So let's let's give it a couple more minutes and we'll wait for that to complete.

### Source 2584: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E305
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And then we'll touch base again.

### Source 2585: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E306
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: All right.

### Source 2586: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E307
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So now the command went through.

### Source 2587: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E308
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: We can see we got one node.

### Source 2588: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E309
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And we can see it's in a ready state.

### Source 2589: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E310
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And if you want to you could do a kubectl get pod dash capital A which is going to show you pods in every namespace, and you're going to see that there's going to be a whole bunch of pods.

### Source 2590: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E311
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: Don't worry about the ones that got evicted.

### Source 2591: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E312
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: They're going to get cleaned up in a second, but you're going to see that there's going to be several calico pods that were deployed.

### Source 2592: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E313
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And everything else should be good to go.

### Source 2593: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E314
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So now that we've got the CNI set up and installed, we can now move on to having the other two nodes join our cluster.

### Source 2594: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E315
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So let's go back to the documentation here that we're following.

### Source 2595: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E316
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: We can then join worker nodes.

### Source 2596: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E317
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And keep in mind the same thing is going to be listed here.

### Source 2597: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E318
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So remember this is the page that showed us installing the cluster using cube ADM.

### Source 2598: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E319
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: After you install that install the pod network add on.

### Source 2599: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E320
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: We did that and then we want to then um, you know at this point you can add more control plane nodes.

### Source 2600: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E321
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So this is if you're going to have multiple control plane nodes, you would add the second one here.

### Source 2601: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E322
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: We don't.

### Source 2602: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E323
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So we can then move on to adding worker nodes.

### Source 2603: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E324
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: There's different steps depending on if it's Linux or Windows.

### Source 2604: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E325
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: Click on Linux.

### Source 2605: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E326
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: The steps are really simple.

### Source 2606: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E327
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: It's just copy this one command.

### Source 2607: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E328
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And so we're just going to do that.

### Source 2608: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E329
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: Remember I have the command here.

### Source 2609: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E330
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: Um but if you lost it there is a command to create that token.

### Source 2610: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E331
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: Again you just run this cube ADM token, create print join command on the control plane node and it's going to spit out that command.

### Source 2611: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E332
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So I'm going to copy this.

### Source 2612: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E333
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And we're going to run this on node one and node two.

### Source 2613: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E334
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And make sure you do sudo.

### Source 2614: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E335
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: You will need sudo privilege paste that command in and it's going to join this node to the cluster.

### Source 2615: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E336
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And that's all we have to do.

### Source 2616: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E337
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And we do the same thing for node two.

### Source 2617: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E338
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And now if I go back to the control plane node.

### Source 2618: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E339
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And I do a cube CTL get node, we can see we have three nodes.

### Source 2619: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E340
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: Two are in a ready state.

### Source 2620: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E341
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: Um, this one just has to move into a ready state, which would usually involve it has to deploy all of the proper calico pods onto that specific node so that the networking is working on that node.

### Source 2621: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E342
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So if you just give it a couple more seconds, you can see it moves into a ready state.

### Source 2622: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E343
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So everything should be good to go.

### Source 2623: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E344
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: The last step is let's test to make sure that everything's working.

### Source 2624: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E345
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So in this case we're going to deploy a nginx pod.

### Source 2625: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E346
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So we're going to create a deployment using the nginx image.

### Source 2626: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E347
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And I'm just going to paste this in that's going to create that pod.

### Source 2627: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E348
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And then we're going to create a node port service.

### Source 2628: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E349
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And that will give us external access to that pod.

### Source 2629: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E350
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And we should be able to test to see if we're able to access it.

### Source 2630: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E351
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And so now what we could do is uh, if I do kubectl get node dash o wide and we can move this over for now.

### Source 2631: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E352
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: Um, we've got the IP addresses of node one, node two.

### Source 2632: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E353
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So we should theoretically, if I do a cube CTL get service.

### Source 2633: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E354
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: This is the service we created for that nginx deployment.

### Source 2634: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E355
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: We should be able to access it using that port on that node.

### Source 2635: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E356
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So if I do a curl and I just grab this IP here.

### Source 2636: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E357
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And we go on port 301443.

### Source 2637: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E358
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: You can see we can access the nginx server.

### Source 2638: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E359
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And we should be able to do this with the IP address of node two as well.

### Source 2639: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E360
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And that's going to confirm that the services are working.

### Source 2640: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E361
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And all of the networking is working as it should.

### Source 2641: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E362
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And we can see that also works.

### Source 2642: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E363
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: All right.

### Source 2643: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E364
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So we've now successfully deployed a Kubernetes cluster using cube ADM.

### Source 2644: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E365
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So for the exam I really just want to highlight the documentation page where we ultimately need to look.

### Source 2645: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E366
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So remember it's all going to be under bootstrapping cluster with cube ADM.

### Source 2646: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E367
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And you want to see creating a cluster with cube ADM that's going to have all of the instructions and all of the necessary links.

### Source 2647: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E368
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And then obviously, if you want to install a specific CNI, you're gonna have to pull up the documentation for that specific CNI.

### Source 2648: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E369
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: Now, if you're going to be following along and basically following this GitHub repository to installing your Kubernetes cluster, you're going to be copying the commands from this GitHub repo.

### Source 2649: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E370
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And you're going to see at the top of this page there's going to be a note which basically says that all of the commands that we provide, they're going to be grouped within curly braces.

### Source 2650: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E371
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And this is to help avoid certain issues that you may.

### Source 2651: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E372
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: It's not guaranteed that you'll run into, but you may run into.

### Source 2652: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E373
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And the reason why we have these curly braces is so that, um, in scenarios where you have to group several commands with the sudo command, um, the sudo command will stop working after the first command.

### Source 2653: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E374
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So anytime you see any, you know, group of commands that you need to run, just copy the curly braces as well.

### Source 2654: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E375
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: So if you just in the GitHub, uh, in the markdown you just select copy code.

### Source 2655: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E376
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: Um, that's going to automatically include the curly braces.

### Source 2656: learn-kubernetes/11_Appendix - Setup Multi Node cluster using Kubeadm/061_Demo - Kubeadm - Configuring Cluster With Kubeadm.extraction.md::E377
- Source: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 061_Demo - Kubeadm - Configuring Cluster With Kubeadm.txt
- Evidence: And it's going to help avoid any potential issues.
