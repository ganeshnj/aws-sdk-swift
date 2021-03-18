// Code generated by smithy-swift-codegen. DO NOT EDIT!

import Foundation

/**
 <p>Represents the response from the server from the request to get the specified user as
             an administrator.</p>
 */
public struct AdminGetUserOutput: Equatable {
    /// <p>Indicates that the status is enabled.</p>
    public let enabled: Bool
    /**
     <p>
                 <i>This response parameter is no longer supported.</i> It provides
                 information only about SMS MFA configurations. It doesn't provide information about TOTP
                 software token MFA configurations. To look up information about either type of MFA
                 configuration, use UserMFASettingList instead.</p>
     */
    public let mFAOptions: [MFAOptionType]?
    /// <p>The user's preferred MFA setting.</p>
    public let preferredMfaSetting: String?
    /// <p>An array of name-value pairs representing user attributes.</p>
    public let userAttributes: [AttributeType]?
    /// <p>The date the user was created.</p>
    public let userCreateDate: Date?
    /// <p>The date the user was last modified.</p>
    public let userLastModifiedDate: Date?
    /**
     <p>The MFA options that are enabled for the user. The possible values in this list are
                     <code>SMS_MFA</code> and <code>SOFTWARE_TOKEN_MFA</code>.</p>
     */
    public let userMFASettingList: [String]?
    /**
     <p>The user status. Can be one of the following:</p>
             <ul>
                 <li>
                     <p>UNCONFIRMED - User has been created but not confirmed.</p>
                 </li>
                 <li>
                     <p>CONFIRMED - User has been confirmed.</p>
                 </li>
                 <li>
                     <p>ARCHIVED - User is no longer active.</p>
                 </li>
                 <li>
                     <p>COMPROMISED - User is disabled due to a potential security threat.</p>
                 </li>
                 <li>
                     <p>UNKNOWN - User status is not known.</p>
                 </li>
                 <li>
                     <p>RESET_REQUIRED - User is confirmed, but the user must request a code and reset
                         his or her password before he or she can sign in.</p>
                 </li>
                 <li>
                     <p>FORCE_CHANGE_PASSWORD - The user is confirmed and the user can sign in using a
                         temporary password, but on first sign-in, the user must change his or her
                         password to a new value before doing anything else. </p>
                 </li>
              </ul>
     */
    public let userStatus: UserStatusType?
    /// <p>The user name of the user about whom you are receiving information.</p>
    public let username: String?

    public init (
        enabled: Bool = false,
        mFAOptions: [MFAOptionType]? = nil,
        preferredMfaSetting: String? = nil,
        userAttributes: [AttributeType]? = nil,
        userCreateDate: Date? = nil,
        userLastModifiedDate: Date? = nil,
        userMFASettingList: [String]? = nil,
        userStatus: UserStatusType? = nil,
        username: String? = nil
    )
    {
        self.enabled = enabled
        self.mFAOptions = mFAOptions
        self.preferredMfaSetting = preferredMfaSetting
        self.userAttributes = userAttributes
        self.userCreateDate = userCreateDate
        self.userLastModifiedDate = userLastModifiedDate
        self.userMFASettingList = userMFASettingList
        self.userStatus = userStatus
        self.username = username
    }
}