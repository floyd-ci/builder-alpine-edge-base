FROM floydci/builder-base AS base
FROM alpine:edge

RUN apk --no-cache add cmake ninja

COPY --from=base / /

ENTRYPOINT ["/entrypoint.sh"]
CMD ["ctest", "-S", "/entrypoint.cmake"]
