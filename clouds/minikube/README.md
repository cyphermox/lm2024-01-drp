Install minikube from the preferred method for your system/workstation.

This can also be used for testing procedures.


Linux:

```
bash linux.sh
```

Which essentially does something like this:

```
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube_latest_amd64.deb
sudo dpkg -i minikube_latest_amd64.deb
```

MacOS:

You will also need to have a hypervisor installed, and homebrew.

```
brew install kubectl
brew install hyperkit

brew install minikube
```

Windows:

Look over there: https://minikube.sigs.k8s.io/docs/start/

