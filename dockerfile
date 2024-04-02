
FROM jekyll/jekyll

EXPOSE 4000

RUN cd /srv/jekyll && bundle add webrick

ENTRYPOINT ["jekyll", "serve", "--force_polling", "--drafts", "--livereload", "--trace"]
