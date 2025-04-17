FROM tomcat:10-jdk17

# Tomcat のデフォルトアプリを削除
RUN rm -rf /usr/local/tomcat/webapps/*

# WAR ファイルをコピー
COPY book.war /usr/local/tomcat/webapps/ROOT.war

# ポート設定（Render 用）
ENV PORT 8080
EXPOSE 8080

# Tomcat を起動
CMD ["catalina.sh", "run"]