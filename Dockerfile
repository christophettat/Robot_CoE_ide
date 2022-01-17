FROM christophettat/devops_coe_robot:v4.1.0-0 

USER root
ENV COMMIT_ID ccbaa2d27e38e5afa3e5c21c1c7bef4657064247

RUN wget -O vscode-server-linux-x64.tar.gz -q "https://update.code.visualstudio.com/commit:$COMMIT_ID/server-linux-x64/stable" \
   && mkdir /root/.vscode-server \
   && mkdir /root/.vscode-server/bin \
   && mv vscode-server-linux-x64.tar.gz /root/.vscode-server/bin/


# Execute all robot tests
CMD ["run-tests-in-virtual-screen.sh"]
