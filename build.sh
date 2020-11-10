for repo in src/*
do
  helm package $repo
done
helm repo index .