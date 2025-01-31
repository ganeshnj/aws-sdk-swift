// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[ListAnswersOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListAnswersInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListAnswersOutputResponse`
extension WellArchitectedClient {
    public func listAnswersPaginated(input: ListAnswersInput) -> ClientRuntime.PaginatorSequence<ListAnswersInput, ListAnswersOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListAnswersInput, ListAnswersOutputResponse>(input: input, inputKey: \ListAnswersInput.nextToken, outputKey: \ListAnswersOutputResponse.nextToken, paginationFunction: self.listAnswers(input:))
    }
}

extension ListAnswersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAnswersInput {
        return ListAnswersInput(
            lensAlias: self.lensAlias,
            maxResults: self.maxResults,
            milestoneNumber: self.milestoneNumber,
            nextToken: token,
            pillarId: self.pillarId,
            workloadId: self.workloadId
        )}
}

/// Paginate over `[ListCheckDetailsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListCheckDetailsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListCheckDetailsOutputResponse`
extension WellArchitectedClient {
    public func listCheckDetailsPaginated(input: ListCheckDetailsInput) -> ClientRuntime.PaginatorSequence<ListCheckDetailsInput, ListCheckDetailsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListCheckDetailsInput, ListCheckDetailsOutputResponse>(input: input, inputKey: \ListCheckDetailsInput.nextToken, outputKey: \ListCheckDetailsOutputResponse.nextToken, paginationFunction: self.listCheckDetails(input:))
    }
}

extension ListCheckDetailsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListCheckDetailsInput {
        return ListCheckDetailsInput(
            choiceId: self.choiceId,
            lensArn: self.lensArn,
            maxResults: self.maxResults,
            nextToken: token,
            pillarId: self.pillarId,
            questionId: self.questionId,
            workloadId: self.workloadId
        )}
}

/// Paginate over `[ListCheckSummariesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListCheckSummariesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListCheckSummariesOutputResponse`
extension WellArchitectedClient {
    public func listCheckSummariesPaginated(input: ListCheckSummariesInput) -> ClientRuntime.PaginatorSequence<ListCheckSummariesInput, ListCheckSummariesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListCheckSummariesInput, ListCheckSummariesOutputResponse>(input: input, inputKey: \ListCheckSummariesInput.nextToken, outputKey: \ListCheckSummariesOutputResponse.nextToken, paginationFunction: self.listCheckSummaries(input:))
    }
}

extension ListCheckSummariesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListCheckSummariesInput {
        return ListCheckSummariesInput(
            choiceId: self.choiceId,
            lensArn: self.lensArn,
            maxResults: self.maxResults,
            nextToken: token,
            pillarId: self.pillarId,
            questionId: self.questionId,
            workloadId: self.workloadId
        )}
}

/// Paginate over `[ListLensesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListLensesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListLensesOutputResponse`
extension WellArchitectedClient {
    public func listLensesPaginated(input: ListLensesInput) -> ClientRuntime.PaginatorSequence<ListLensesInput, ListLensesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListLensesInput, ListLensesOutputResponse>(input: input, inputKey: \ListLensesInput.nextToken, outputKey: \ListLensesOutputResponse.nextToken, paginationFunction: self.listLenses(input:))
    }
}

extension ListLensesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListLensesInput {
        return ListLensesInput(
            lensName: self.lensName,
            lensStatus: self.lensStatus,
            lensType: self.lensType,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListLensReviewImprovementsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListLensReviewImprovementsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListLensReviewImprovementsOutputResponse`
extension WellArchitectedClient {
    public func listLensReviewImprovementsPaginated(input: ListLensReviewImprovementsInput) -> ClientRuntime.PaginatorSequence<ListLensReviewImprovementsInput, ListLensReviewImprovementsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListLensReviewImprovementsInput, ListLensReviewImprovementsOutputResponse>(input: input, inputKey: \ListLensReviewImprovementsInput.nextToken, outputKey: \ListLensReviewImprovementsOutputResponse.nextToken, paginationFunction: self.listLensReviewImprovements(input:))
    }
}

extension ListLensReviewImprovementsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListLensReviewImprovementsInput {
        return ListLensReviewImprovementsInput(
            lensAlias: self.lensAlias,
            maxResults: self.maxResults,
            milestoneNumber: self.milestoneNumber,
            nextToken: token,
            pillarId: self.pillarId,
            workloadId: self.workloadId
        )}
}

/// Paginate over `[ListLensReviewsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListLensReviewsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListLensReviewsOutputResponse`
extension WellArchitectedClient {
    public func listLensReviewsPaginated(input: ListLensReviewsInput) -> ClientRuntime.PaginatorSequence<ListLensReviewsInput, ListLensReviewsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListLensReviewsInput, ListLensReviewsOutputResponse>(input: input, inputKey: \ListLensReviewsInput.nextToken, outputKey: \ListLensReviewsOutputResponse.nextToken, paginationFunction: self.listLensReviews(input:))
    }
}

extension ListLensReviewsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListLensReviewsInput {
        return ListLensReviewsInput(
            maxResults: self.maxResults,
            milestoneNumber: self.milestoneNumber,
            nextToken: token,
            workloadId: self.workloadId
        )}
}

/// Paginate over `[ListLensSharesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListLensSharesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListLensSharesOutputResponse`
extension WellArchitectedClient {
    public func listLensSharesPaginated(input: ListLensSharesInput) -> ClientRuntime.PaginatorSequence<ListLensSharesInput, ListLensSharesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListLensSharesInput, ListLensSharesOutputResponse>(input: input, inputKey: \ListLensSharesInput.nextToken, outputKey: \ListLensSharesOutputResponse.nextToken, paginationFunction: self.listLensShares(input:))
    }
}

extension ListLensSharesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListLensSharesInput {
        return ListLensSharesInput(
            lensAlias: self.lensAlias,
            maxResults: self.maxResults,
            nextToken: token,
            sharedWithPrefix: self.sharedWithPrefix,
            status: self.status
        )}
}

/// Paginate over `[ListMilestonesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListMilestonesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListMilestonesOutputResponse`
extension WellArchitectedClient {
    public func listMilestonesPaginated(input: ListMilestonesInput) -> ClientRuntime.PaginatorSequence<ListMilestonesInput, ListMilestonesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListMilestonesInput, ListMilestonesOutputResponse>(input: input, inputKey: \ListMilestonesInput.nextToken, outputKey: \ListMilestonesOutputResponse.nextToken, paginationFunction: self.listMilestones(input:))
    }
}

extension ListMilestonesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListMilestonesInput {
        return ListMilestonesInput(
            maxResults: self.maxResults,
            nextToken: token,
            workloadId: self.workloadId
        )}
}

/// Paginate over `[ListNotificationsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListNotificationsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListNotificationsOutputResponse`
extension WellArchitectedClient {
    public func listNotificationsPaginated(input: ListNotificationsInput) -> ClientRuntime.PaginatorSequence<ListNotificationsInput, ListNotificationsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListNotificationsInput, ListNotificationsOutputResponse>(input: input, inputKey: \ListNotificationsInput.nextToken, outputKey: \ListNotificationsOutputResponse.nextToken, paginationFunction: self.listNotifications(input:))
    }
}

extension ListNotificationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListNotificationsInput {
        return ListNotificationsInput(
            maxResults: self.maxResults,
            nextToken: token,
            workloadId: self.workloadId
        )}
}

/// Paginate over `[ListShareInvitationsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListShareInvitationsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListShareInvitationsOutputResponse`
extension WellArchitectedClient {
    public func listShareInvitationsPaginated(input: ListShareInvitationsInput) -> ClientRuntime.PaginatorSequence<ListShareInvitationsInput, ListShareInvitationsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListShareInvitationsInput, ListShareInvitationsOutputResponse>(input: input, inputKey: \ListShareInvitationsInput.nextToken, outputKey: \ListShareInvitationsOutputResponse.nextToken, paginationFunction: self.listShareInvitations(input:))
    }
}

extension ListShareInvitationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListShareInvitationsInput {
        return ListShareInvitationsInput(
            lensNamePrefix: self.lensNamePrefix,
            maxResults: self.maxResults,
            nextToken: token,
            shareResourceType: self.shareResourceType,
            workloadNamePrefix: self.workloadNamePrefix
        )}
}

/// Paginate over `[ListWorkloadsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListWorkloadsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListWorkloadsOutputResponse`
extension WellArchitectedClient {
    public func listWorkloadsPaginated(input: ListWorkloadsInput) -> ClientRuntime.PaginatorSequence<ListWorkloadsInput, ListWorkloadsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListWorkloadsInput, ListWorkloadsOutputResponse>(input: input, inputKey: \ListWorkloadsInput.nextToken, outputKey: \ListWorkloadsOutputResponse.nextToken, paginationFunction: self.listWorkloads(input:))
    }
}

extension ListWorkloadsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListWorkloadsInput {
        return ListWorkloadsInput(
            maxResults: self.maxResults,
            nextToken: token,
            workloadNamePrefix: self.workloadNamePrefix
        )}
}

/// Paginate over `[ListWorkloadSharesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListWorkloadSharesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListWorkloadSharesOutputResponse`
extension WellArchitectedClient {
    public func listWorkloadSharesPaginated(input: ListWorkloadSharesInput) -> ClientRuntime.PaginatorSequence<ListWorkloadSharesInput, ListWorkloadSharesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListWorkloadSharesInput, ListWorkloadSharesOutputResponse>(input: input, inputKey: \ListWorkloadSharesInput.nextToken, outputKey: \ListWorkloadSharesOutputResponse.nextToken, paginationFunction: self.listWorkloadShares(input:))
    }
}

extension ListWorkloadSharesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListWorkloadSharesInput {
        return ListWorkloadSharesInput(
            maxResults: self.maxResults,
            nextToken: token,
            sharedWithPrefix: self.sharedWithPrefix,
            status: self.status,
            workloadId: self.workloadId
        )}
}
