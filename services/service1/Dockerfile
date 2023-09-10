FROM oven/bun AS base

FROM base AS builder
WORKDIR /app
COPY . .
RUN bun install
RUN bun run build

FROM base AS runner
WORKDIR /app
COPY --from=builder /app/build /app/build
ARG PORT=8000
ENV PORT ${PORT}
EXPOSE ${PORT}

CMD ["bun", "build/index.js"]
