GO_LIBRARY()

LICENSE(Apache-2.0)

SRCS(
    errors.go
    ratelimiter.go
    resource.go
)

GO_XTEST_SRCS(example_test.go)

END()

RECURSE(
    gotest
)
