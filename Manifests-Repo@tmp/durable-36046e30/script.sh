
                                git config --global user.email '${GIT_USER_EMAIL}'
                                git config --global user.name '${GIT_USER_NAME}'
                                git add deployment.yml
                                git add ../yarn.lock ../.scannerwork/ ../Manifests-Repo@tmp/ ../dependency-check-report.xml ../package-lock.json ../trivyfs.txt ../trivyimage.txt
                                git commit -m "Update deployment image to version ${BUILD_NUMBER}"
                                git push https://${GITHUB_TOKEN}@github.com/${GIT_USER_NAME}/${GIT_REPO_NAME} HEAD:main
                            