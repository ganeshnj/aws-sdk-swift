// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum RestoreTableFromBackupError {
    case backupInUseException(BackupInUseException)
    case backupNotFoundException(BackupNotFoundException)
    case internalServerError(InternalServerError)
    case invalidEndpointException(InvalidEndpointException)
    case limitExceededException(LimitExceededException)
    case tableAlreadyExistsException(TableAlreadyExistsException)
    case tableInUseException(TableInUseException)
    case unknown(UnknownAWSHttpServiceError)
}