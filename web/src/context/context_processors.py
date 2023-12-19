def context_sample(request):
    return {
        "request_sample": dir(request),
    }
