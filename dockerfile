FROM christophettat/devops_coe_robot:v4.1.0-0 

USER root
ENV COMMIT_ID 899d46d82c4c95423fb7e10e68eba52050e30ba3

RUN wget -O vscode-server-linux-x64.tar.gz -q "https://update.code.visualstudio.com/commit:$COMMIT_ID/server-linux-x64/stable" \
   && mkdir /root/.vscode-server \
   && mkdir /root/.vscode-server/bin \
   && mv vscode-server-linux-x64.tar.gz /root/.vscode-server/bin/


# Execute all robot tests
CMD ["run-tests-in-virtual-screen.sh"]
