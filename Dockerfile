FROM pretix/standalone:stable

COPY ./entrypoint.sh /entrypoint.sh

USER root
RUN chown -R pretixuser:pretixuser /pretix
USER pretixuser

RUN cd /pretix/src && make staticfiles
RUN cd /pretix/src && make compress

ENTRYPOINT [ "/entrypoint.sh" ]
CMD [ "all" ]