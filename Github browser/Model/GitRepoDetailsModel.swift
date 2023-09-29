//
//  GitRepoDetailsModel.swift
//  Github browser
//
//  Created by Thor on 2023. 09. 29..
//

import Foundation

/// Full Repository
// MARK: - GitRepo
struct GitRepoDetails: Codable {
	let allowAutoMerge, allowForking, allowMergeCommit, allowRebaseMerge: Bool?
	let allowSquashMerge, allowUpdateBranch: Bool?
	/// Whether anonymous git access is allowed.
	let anonymousAccessEnabled: Bool?
	let archiveURL: String
	let archived: Bool
	let assigneesURL, blobsURL, branchesURL, cloneURL: String
	/// Code of Conduct Simple
	let codeOfConduct: CodeOfConductSimple?
	let collaboratorsURL, commentsURL, commitsURL, compareURL: String
	let contentsURL, contributorsURL: String
	let createdAt: Date
	let defaultBranch: String
	let deleteBranchOnMerge: Bool?
	let deploymentsURL: String
	let description: String?
	/// Returns whether or not this repository disabled.
	let disabled: Bool
	let downloadsURL, eventsURL: String
	let fork: Bool
	let forks, forksCount: Int
	let forksURL, fullName, gitCommitsURL, gitRefsURL: String
	let gitTagsURL, gitURL: String
	let hasDiscussions, hasDownloads, hasIssues, hasPages: Bool
	let hasProjects, hasWiki: Bool
	let homepage: String?
	let hooksURL, htmlURL: String
	let id: Int
	let isTemplate: Bool?
	let issueCommentURL, issueEventsURL, issuesURL, keysURL: String
	let labelsURL: String
	let language: String?
	let languagesURL: String
	let license: GitRepoLicenseSimple?
	let masterBranch: String?
	/// The default value for a merge commit message.
	///
	/// - `PR_TITLE` - default to the pull request's title.
	/// - `PR_BODY` - default to the pull request's body.
	/// - `BLANK` - default to a blank commit message.
	let mergeCommitMessage: MergeCommitMessage?
	/// The default value for a merge commit title.
	///
	/// - `PR_TITLE` - default to the pull request's title.
	/// - `MERGE_MESSAGE` - default to the classic title for a merge message (e.g., Merge pull
	/// request #123 from branch-name).
	let mergeCommitTitle: MergeCommitTitle?
	let mergesURL, milestonesURL: String
	let mirrorURL: String?
	let name: String
	let networkCount: Int
	let nodeID, notificationsURL: String
	let openIssues, openIssuesCount: Int
	let organization: GitRepoSimpleUser?
	/// A GitHub user.
	let owner: GitRepoOwner
	/// A repository on GitHub.
	let parent: ParentClass?
	let permissions: GitRepoPermissions?
	let gitRepoPrivate: Bool
	let pullsURL: String
	let pushedAt: String
	let releasesURL: String
	let securityAndAnalysis: SecurityAndAnalysis?
	/// The size of the repository. Size is calculated hourly. When a repository is initially
	/// created, the size is 0.
	let size: Int
	/// A repository on GitHub.
	let source: SourceClass?
	/// The default value for a squash merge commit message:
	///
	/// - `PR_BODY` - default to the pull request's body.
	/// - `COMMIT_MESSAGES` - default to the branch's commit messages.
	/// - `BLANK` - default to a blank commit message.
	let squashMergeCommitMessage: SquashMergeCommitMessage?
	/// The default value for a squash merge commit title:
	///
	/// - `PR_TITLE` - default to the pull request's title.
	/// - `COMMIT_OR_PR_TITLE` - default to the commit's title (if only one commit) or the pull
	/// request's title (when more than one commit).
	let squashMergeCommitTitle: SquashMergeCommitTitle?
	let sshURL: String
	let stargazersCount: Int
	let stargazersURL, statusesURL: String
	let subscribersCount: Int
	let subscribersURL, subscriptionURL, svnURL, tagsURL: String
	let teamsURL: String
	let tempCloneToken: String?
	let templateRepository: Repository?
	let topics: [String]?
	let treesURL: String
	let updatedAt: String
	let url: String
	let useSquashPRTitleAsDefault: Bool?
	/// The repository visibility: public, private, or internal.
	let visibility: String?
	let watchers, watchersCount: Int
	let webCommitSignoffRequired: Bool?

	enum CodingKeys: String, CodingKey {
		case allowAutoMerge = "allow_auto_merge"
		case allowForking = "allow_forking"
		case allowMergeCommit = "allow_merge_commit"
		case allowRebaseMerge = "allow_rebase_merge"
		case allowSquashMerge = "allow_squash_merge"
		case allowUpdateBranch = "allow_update_branch"
		case anonymousAccessEnabled = "anonymous_access_enabled"
		case archiveURL = "archive_url"
		case archived
		case assigneesURL = "assignees_url"
		case blobsURL = "blobs_url"
		case branchesURL = "branches_url"
		case cloneURL = "clone_url"
		case codeOfConduct = "code_of_conduct"
		case collaboratorsURL = "collaborators_url"
		case commentsURL = "comments_url"
		case commitsURL = "commits_url"
		case compareURL = "compare_url"
		case contentsURL = "contents_url"
		case contributorsURL = "contributors_url"
		case createdAt = "created_at"
		case defaultBranch = "default_branch"
		case deleteBranchOnMerge = "delete_branch_on_merge"
		case deploymentsURL = "deployments_url"
		case description, disabled
		case downloadsURL = "downloads_url"
		case eventsURL = "events_url"
		case fork, forks
		case forksCount = "forks_count"
		case forksURL = "forks_url"
		case fullName = "full_name"
		case gitCommitsURL = "git_commits_url"
		case gitRefsURL = "git_refs_url"
		case gitTagsURL = "git_tags_url"
		case gitURL = "git_url"
		case hasDiscussions = "has_discussions"
		case hasDownloads = "has_downloads"
		case hasIssues = "has_issues"
		case hasPages = "has_pages"
		case hasProjects = "has_projects"
		case hasWiki = "has_wiki"
		case homepage
		case hooksURL = "hooks_url"
		case htmlURL = "html_url"
		case id
		case isTemplate = "is_template"
		case issueCommentURL = "issue_comment_url"
		case issueEventsURL = "issue_events_url"
		case issuesURL = "issues_url"
		case keysURL = "keys_url"
		case labelsURL = "labels_url"
		case language
		case languagesURL = "languages_url"
		case license
		case masterBranch = "master_branch"
		case mergeCommitMessage = "merge_commit_message"
		case mergeCommitTitle = "merge_commit_title"
		case mergesURL = "merges_url"
		case milestonesURL = "milestones_url"
		case mirrorURL = "mirror_url"
		case name
		case networkCount = "network_count"
		case nodeID = "node_id"
		case notificationsURL = "notifications_url"
		case openIssues = "open_issues"
		case openIssuesCount = "open_issues_count"
		case organization, owner, parent, permissions
		case gitRepoPrivate = "private"
		case pullsURL = "pulls_url"
		case pushedAt = "pushed_at"
		case releasesURL = "releases_url"
		case securityAndAnalysis = "security_and_analysis"
		case size, source
		case squashMergeCommitMessage = "squash_merge_commit_message"
		case squashMergeCommitTitle = "squash_merge_commit_title"
		case sshURL = "ssh_url"
		case stargazersCount = "stargazers_count"
		case stargazersURL = "stargazers_url"
		case statusesURL = "statuses_url"
		case subscribersCount = "subscribers_count"
		case subscribersURL = "subscribers_url"
		case subscriptionURL = "subscription_url"
		case svnURL = "svn_url"
		case tagsURL = "tags_url"
		case teamsURL = "teams_url"
		case tempCloneToken = "temp_clone_token"
		case templateRepository = "template_repository"
		case topics
		case treesURL = "trees_url"
		case updatedAt = "updated_at"
		case url
		case useSquashPRTitleAsDefault = "use_squash_pr_title_as_default"
		case visibility, watchers
		case watchersCount = "watchers_count"
		case webCommitSignoffRequired = "web_commit_signoff_required"
	}
}

/// Code of Conduct Simple
// MARK: - CodeOfConductSimple
struct CodeOfConductSimple: Codable {
	let htmlURL: String?
	let key, name, url: String

	enum CodingKeys: String, CodingKey {
		case htmlURL = "html_url"
		case key, name, url
	}
}

/// License Simple
// MARK: - GitRepoLicenseSimple
struct GitRepoLicenseSimple: Codable {
	let htmlURL: String?
	let key, name, nodeID: String
	let spdxID, url: String?

	enum CodingKeys: String, CodingKey {
		case htmlURL = "html_url"
		case key, name
		case nodeID = "node_id"
		case spdxID = "spdx_id"
		case url
	}
}

/// The default value for a merge commit message.
///
/// - `PR_TITLE` - default to the pull request's title.
/// - `PR_BODY` - default to the pull request's body.
/// - `BLANK` - default to a blank commit message.
enum MergeCommitMessage: String, Codable {
	case blank = "BLANK"
	case prBody = "PR_BODY"
	case prTitle = "PR_TITLE"
}

/// The default value for a merge commit title.
///
/// - `PR_TITLE` - default to the pull request's title.
/// - `MERGE_MESSAGE` - default to the classic title for a merge message (e.g., Merge pull
/// request #123 from branch-name).
///
/// The default value for a merge commit title.
///
/// - `PR_TITLE` - default to the pull request's title.
/// - `MERGE_MESSAGE` - default to the classic title for a merge message (e.g., Merge pull
/// request #123 from branch-name).
enum MergeCommitTitle: String, Codable {
	case mergeMessage = "MERGE_MESSAGE"
	case prTitle = "PR_TITLE"
}

/// A GitHub user.
// MARK: - GitRepoSimpleUser
struct GitRepoSimpleUser: Codable {
	let avatarURL: String
	let email: String?
	let eventsURL, followersURL, followingURL, gistsURL: String
	let gravatarID: String?
	let htmlURL: String
	let id: Int
	let login: String
	let name: String?
	let nodeID, organizationsURL, receivedEventsURL, reposURL: String
	let siteAdmin: Bool
	let starredAt: String?
	let starredURL, subscriptionsURL, type, url: String

	enum CodingKeys: String, CodingKey {
		case avatarURL = "avatar_url"
		case email
		case eventsURL = "events_url"
		case followersURL = "followers_url"
		case followingURL = "following_url"
		case gistsURL = "gists_url"
		case gravatarID = "gravatar_id"
		case htmlURL = "html_url"
		case id, login, name
		case nodeID = "node_id"
		case organizationsURL = "organizations_url"
		case receivedEventsURL = "received_events_url"
		case reposURL = "repos_url"
		case siteAdmin = "site_admin"
		case starredAt = "starred_at"
		case starredURL = "starred_url"
		case subscriptionsURL = "subscriptions_url"
		case type, url
	}
}

/// A GitHub user.
// MARK: - GitRepoOwner
struct GitRepoOwner: Codable {
	let avatarURL: String
	let email: String?
	let eventsURL, followersURL, followingURL, gistsURL: String
	let gravatarID: String?
	let htmlURL: String
	let id: Int
	let login: String
	let name: String?
	let nodeID, organizationsURL, receivedEventsURL, reposURL: String
	let siteAdmin: Bool
	let starredAt: String?
	let starredURL, subscriptionsURL, type, url: String

	enum CodingKeys: String, CodingKey {
		case avatarURL = "avatar_url"
		case email
		case eventsURL = "events_url"
		case followersURL = "followers_url"
		case followingURL = "following_url"
		case gistsURL = "gists_url"
		case gravatarID = "gravatar_id"
		case htmlURL = "html_url"
		case id, login, name
		case nodeID = "node_id"
		case organizationsURL = "organizations_url"
		case receivedEventsURL = "received_events_url"
		case reposURL = "repos_url"
		case siteAdmin = "site_admin"
		case starredAt = "starred_at"
		case starredURL = "starred_url"
		case subscriptionsURL = "subscriptions_url"
		case type, url
	}
}

/// A repository on GitHub.
// MARK: - ParentClass
struct ParentClass: Codable {
	/// Whether to allow Auto-merge to be used on pull requests.
	let allowAutoMerge: Bool?
	/// Whether to allow forking this repo
	let allowForking: Bool?
	/// Whether to allow merge commits for pull requests.
	let allowMergeCommit: Bool?
	/// Whether to allow rebase merges for pull requests.
	let allowRebaseMerge: Bool?
	/// Whether to allow squash merges for pull requests.
	let allowSquashMerge: Bool?
	/// Whether or not a pull request head branch that is behind its base branch can always be
	/// updated even if it is not required to be up to date before merging.
	let allowUpdateBranch: Bool?
	/// Whether anonymous git access is enabled for this repository
	let anonymousAccessEnabled: Bool?
	let archiveURL: String
	/// Whether the repository is archived.
	let archived: Bool
	let assigneesURL, blobsURL, branchesURL, cloneURL: String
	let collaboratorsURL, commentsURL, commitsURL, compareURL: String
	let contentsURL, contributorsURL: String
	let createdAt: String?
	/// The default branch of the repository.
	let defaultBranch: String
	/// Whether to delete head branches when pull requests are merged
	let deleteBranchOnMerge: Bool?
	let deploymentsURL: String
	let description: String?
	/// Returns whether or not this repository disabled.
	let disabled: Bool
	let downloadsURL, eventsURL: String
	let fork: Bool
	let forks, forksCount: Int
	let forksURL, fullName, gitCommitsURL, gitRefsURL: String
	let gitTagsURL, gitURL: String
	/// Whether discussions are enabled.
	let hasDiscussions: Bool?
	/// Whether downloads are enabled.
	let hasDownloads: Bool
	/// Whether issues are enabled.
	let hasIssues: Bool
	let hasPages: Bool
	/// Whether projects are enabled.
	let hasProjects: Bool
	/// Whether the wiki is enabled.
	let hasWiki: Bool
	let homepage: String?
	let hooksURL, htmlURL: String
	/// Unique identifier of the repository
	let id: Int
	/// Whether this repository acts as a template that can be used to generate new repositories.
	let isTemplate: Bool?
	let issueCommentURL, issueEventsURL, issuesURL, keysURL: String
	let labelsURL: String
	let language: String?
	let languagesURL: String
	let license: ParentLicenseSimple?
	let masterBranch: String?
	/// The default value for a merge commit message.
	///
	/// - `PR_TITLE` - default to the pull request's title.
	/// - `PR_BODY` - default to the pull request's body.
	/// - `BLANK` - default to a blank commit message.
	let mergeCommitMessage: MergeCommitMessage?
	/// The default value for a merge commit title.
	///
	/// - `PR_TITLE` - default to the pull request's title.
	/// - `MERGE_MESSAGE` - default to the classic title for a merge message (e.g., Merge pull
	/// request #123 from branch-name).
	let mergeCommitTitle: MergeCommitTitle?
	let mergesURL, milestonesURL: String
	let mirrorURL: String?
	/// The name of the repository.
	let name: String
	let networkCount: Int?
	let nodeID, notificationsURL: String
	let openIssues, openIssuesCount: Int
	let organization: ParentSimpleUser?
	/// A GitHub user.
	let owner: ParentOwner
	let permissions: ParentPermissions?
	/// Whether the repository is private or public.
	let repositoryPrivate: Bool
	let pullsURL: String
	let pushedAt: String?
	let releasesURL: String
	/// The size of the repository. Size is calculated hourly. When a repository is initially
	/// created, the size is 0.
	let size: Int
	/// The default value for a squash merge commit message:
	///
	/// - `PR_BODY` - default to the pull request's body.
	/// - `COMMIT_MESSAGES` - default to the branch's commit messages.
	/// - `BLANK` - default to a blank commit message.
	let squashMergeCommitMessage: SquashMergeCommitMessage?
	/// The default value for a squash merge commit title:
	///
	/// - `PR_TITLE` - default to the pull request's title.
	/// - `COMMIT_OR_PR_TITLE` - default to the commit's title (if only one commit) or the pull
	/// request's title (when more than one commit).
	let squashMergeCommitTitle: SquashMergeCommitTitle?
	let sshURL: String
	let stargazersCount: Int
	let stargazersURL: String
	let starredAt: String?
	let statusesURL: String
	let subscribersCount: Int?
	let subscribersURL, subscriptionURL, svnURL, tagsURL: String
	let teamsURL: String
	let tempCloneToken: String?
	let templateRepository: ParentTemplateRepository?
	let topics: [String]?
	let treesURL: String
	let updatedAt: String?
	let url: String
	/// Whether a squash merge commit can use the pull request title as default. **This property
	/// has been deprecated. Please use `squash_merge_commit_title` instead.
	let useSquashPRTitleAsDefault: Bool?
	/// The repository visibility: public, private, or internal.
	let visibility: String?
	let watchers, watchersCount: Int
	/// Whether to require contributors to sign off on web-based commits
	let webCommitSignoffRequired: Bool?

	enum CodingKeys: String, CodingKey {
		case allowAutoMerge = "allow_auto_merge"
		case allowForking = "allow_forking"
		case allowMergeCommit = "allow_merge_commit"
		case allowRebaseMerge = "allow_rebase_merge"
		case allowSquashMerge = "allow_squash_merge"
		case allowUpdateBranch = "allow_update_branch"
		case anonymousAccessEnabled = "anonymous_access_enabled"
		case archiveURL = "archive_url"
		case archived
		case assigneesURL = "assignees_url"
		case blobsURL = "blobs_url"
		case branchesURL = "branches_url"
		case cloneURL = "clone_url"
		case collaboratorsURL = "collaborators_url"
		case commentsURL = "comments_url"
		case commitsURL = "commits_url"
		case compareURL = "compare_url"
		case contentsURL = "contents_url"
		case contributorsURL = "contributors_url"
		case createdAt = "created_at"
		case defaultBranch = "default_branch"
		case deleteBranchOnMerge = "delete_branch_on_merge"
		case deploymentsURL = "deployments_url"
		case description, disabled
		case downloadsURL = "downloads_url"
		case eventsURL = "events_url"
		case fork, forks
		case forksCount = "forks_count"
		case forksURL = "forks_url"
		case fullName = "full_name"
		case gitCommitsURL = "git_commits_url"
		case gitRefsURL = "git_refs_url"
		case gitTagsURL = "git_tags_url"
		case gitURL = "git_url"
		case hasDiscussions = "has_discussions"
		case hasDownloads = "has_downloads"
		case hasIssues = "has_issues"
		case hasPages = "has_pages"
		case hasProjects = "has_projects"
		case hasWiki = "has_wiki"
		case homepage
		case hooksURL = "hooks_url"
		case htmlURL = "html_url"
		case id
		case isTemplate = "is_template"
		case issueCommentURL = "issue_comment_url"
		case issueEventsURL = "issue_events_url"
		case issuesURL = "issues_url"
		case keysURL = "keys_url"
		case labelsURL = "labels_url"
		case language
		case languagesURL = "languages_url"
		case license
		case masterBranch = "master_branch"
		case mergeCommitMessage = "merge_commit_message"
		case mergeCommitTitle = "merge_commit_title"
		case mergesURL = "merges_url"
		case milestonesURL = "milestones_url"
		case mirrorURL = "mirror_url"
		case name
		case networkCount = "network_count"
		case nodeID = "node_id"
		case notificationsURL = "notifications_url"
		case openIssues = "open_issues"
		case openIssuesCount = "open_issues_count"
		case organization, owner, permissions
		case repositoryPrivate = "private"
		case pullsURL = "pulls_url"
		case pushedAt = "pushed_at"
		case releasesURL = "releases_url"
		case size
		case squashMergeCommitMessage = "squash_merge_commit_message"
		case squashMergeCommitTitle = "squash_merge_commit_title"
		case sshURL = "ssh_url"
		case stargazersCount = "stargazers_count"
		case stargazersURL = "stargazers_url"
		case starredAt = "starred_at"
		case statusesURL = "statuses_url"
		case subscribersCount = "subscribers_count"
		case subscribersURL = "subscribers_url"
		case subscriptionURL = "subscription_url"
		case svnURL = "svn_url"
		case tagsURL = "tags_url"
		case teamsURL = "teams_url"
		case tempCloneToken = "temp_clone_token"
		case templateRepository = "template_repository"
		case topics
		case treesURL = "trees_url"
		case updatedAt = "updated_at"
		case url
		case useSquashPRTitleAsDefault = "use_squash_pr_title_as_default"
		case visibility, watchers
		case watchersCount = "watchers_count"
		case webCommitSignoffRequired = "web_commit_signoff_required"
	}
}

/// License Simple
// MARK: - ParentLicenseSimple
struct ParentLicenseSimple: Codable {
	let htmlURL: String?
	let key, name, nodeID: String
	let spdxID, url: String?

	enum CodingKeys: String, CodingKey {
		case htmlURL = "html_url"
		case key, name
		case nodeID = "node_id"
		case spdxID = "spdx_id"
		case url
	}
}

/// A GitHub user.
// MARK: - ParentSimpleUser
struct ParentSimpleUser: Codable {
	let avatarURL: String
	let email: String?
	let eventsURL, followersURL, followingURL, gistsURL: String
	let gravatarID: String?
	let htmlURL: String
	let id: Int
	let login: String
	let name: String?
	let nodeID, organizationsURL, receivedEventsURL, reposURL: String
	let siteAdmin: Bool
	let starredAt: String?
	let starredURL, subscriptionsURL, type, url: String

	enum CodingKeys: String, CodingKey {
		case avatarURL = "avatar_url"
		case email
		case eventsURL = "events_url"
		case followersURL = "followers_url"
		case followingURL = "following_url"
		case gistsURL = "gists_url"
		case gravatarID = "gravatar_id"
		case htmlURL = "html_url"
		case id, login, name
		case nodeID = "node_id"
		case organizationsURL = "organizations_url"
		case receivedEventsURL = "received_events_url"
		case reposURL = "repos_url"
		case siteAdmin = "site_admin"
		case starredAt = "starred_at"
		case starredURL = "starred_url"
		case subscriptionsURL = "subscriptions_url"
		case type, url
	}
}

/// A GitHub user.
// MARK: - ParentOwner
struct ParentOwner: Codable {
	let avatarURL: String
	let email: String?
	let eventsURL, followersURL, followingURL, gistsURL: String
	let gravatarID: String?
	let htmlURL: String
	let id: Int
	let login: String
	let name: String?
	let nodeID, organizationsURL, receivedEventsURL, reposURL: String
	let siteAdmin: Bool
	let starredAt: String?
	let starredURL, subscriptionsURL, type, url: String

	enum CodingKeys: String, CodingKey {
		case avatarURL = "avatar_url"
		case email
		case eventsURL = "events_url"
		case followersURL = "followers_url"
		case followingURL = "following_url"
		case gistsURL = "gists_url"
		case gravatarID = "gravatar_id"
		case htmlURL = "html_url"
		case id, login, name
		case nodeID = "node_id"
		case organizationsURL = "organizations_url"
		case receivedEventsURL = "received_events_url"
		case reposURL = "repos_url"
		case siteAdmin = "site_admin"
		case starredAt = "starred_at"
		case starredURL = "starred_url"
		case subscriptionsURL = "subscriptions_url"
		case type, url
	}
}

// MARK: - ParentPermissions
struct ParentPermissions: Codable {
	let admin: Bool
	let maintain: Bool?
	let pull, push: Bool
	let triage: Bool?
}

/// The default value for a squash merge commit message:
///
/// - `PR_BODY` - default to the pull request's body.
/// - `COMMIT_MESSAGES` - default to the branch's commit messages.
/// - `BLANK` - default to a blank commit message.
enum SquashMergeCommitMessage: String, Codable {
	case blank = "BLANK"
	case commitMessages = "COMMIT_MESSAGES"
	case prBody = "PR_BODY"
}

/// The default value for a squash merge commit title:
///
/// - `PR_TITLE` - default to the pull request's title.
/// - `COMMIT_OR_PR_TITLE` - default to the commit's title (if only one commit) or the pull
/// request's title (when more than one commit).
enum SquashMergeCommitTitle: String, Codable {
	case commitOrPRTitle = "COMMIT_OR_PR_TITLE"
	case prTitle = "PR_TITLE"
}

// MARK: - ParentTemplateRepository
struct ParentTemplateRepository: Codable {
	let allowAutoMerge, allowMergeCommit, allowRebaseMerge, allowSquashMerge: Bool?
	let allowUpdateBranch: Bool?
	let archiveURL: String?
	let archived: Bool?
	let assigneesURL, blobsURL, branchesURL, cloneURL: String?
	let collaboratorsURL, commentsURL, commitsURL, compareURL: String?
	let contentsURL, contributorsURL, createdAt, defaultBranch: String?
	let deleteBranchOnMerge: Bool?
	let deploymentsURL, description: String?
	let disabled: Bool?
	let downloadsURL, eventsURL: String?
	let fork: Bool?
	let forksCount: Int?
	let forksURL, fullName, gitCommitsURL, gitRefsURL: String?
	let gitTagsURL, gitURL: String?
	let hasDownloads, hasIssues, hasPages, hasProjects: Bool?
	let hasWiki: Bool?
	let homepage, hooksURL, htmlURL: String?
	let id: Int?
	let isTemplate: Bool?
	let issueCommentURL, issueEventsURL, issuesURL, keysURL: String?
	let labelsURL, language, languagesURL: String?
	/// The default value for a merge commit message.
	///
	/// - `PR_TITLE` - default to the pull request's title.
	/// - `PR_BODY` - default to the pull request's body.
	/// - `BLANK` - default to a blank commit message.
	let mergeCommitMessage: MergeCommitMessage?
	/// The default value for a merge commit title.
	///
	/// - `PR_TITLE` - default to the pull request's title.
	/// - `MERGE_MESSAGE` - default to the classic title for a merge message (e.g., Merge pull
	/// request #123 from branch-name).
	let mergeCommitTitle: MergeCommitTitle?
	let mergesURL, milestonesURL, mirrorURL, name: String?
	let networkCount: Int?
	let nodeID, notificationsURL: String?
	let openIssuesCount: Int?
	let owner: PurpleOwner?
	let permissions: PurplePermissions?
	let templateRepositoryPrivate: Bool?
	let pullsURL, pushedAt, releasesURL: String?
	let size: Int?
	/// The default value for a squash merge commit message:
	///
	/// - `PR_BODY` - default to the pull request's body.
	/// - `COMMIT_MESSAGES` - default to the branch's commit messages.
	/// - `BLANK` - default to a blank commit message.
	let squashMergeCommitMessage: SquashMergeCommitMessage?
	/// The default value for a squash merge commit title:
	///
	/// - `PR_TITLE` - default to the pull request's title.
	/// - `COMMIT_OR_PR_TITLE` - default to the commit's title (if only one commit) or the pull
	/// request's title (when more than one commit).
	let squashMergeCommitTitle: SquashMergeCommitTitle?
	let sshURL: String?
	let stargazersCount: Int?
	let stargazersURL, statusesURL: String?
	let subscribersCount: Int?
	let subscribersURL, subscriptionURL, svnURL, tagsURL: String?
	let teamsURL, tempCloneToken: String?
	let topics: [String]?
	let treesURL, updatedAt, url: String?
	let useSquashPRTitleAsDefault: Bool?
	let visibility: String?
	let watchersCount: Int?

	enum CodingKeys: String, CodingKey {
		case allowAutoMerge = "allow_auto_merge"
		case allowMergeCommit = "allow_merge_commit"
		case allowRebaseMerge = "allow_rebase_merge"
		case allowSquashMerge = "allow_squash_merge"
		case allowUpdateBranch = "allow_update_branch"
		case archiveURL = "archive_url"
		case archived
		case assigneesURL = "assignees_url"
		case blobsURL = "blobs_url"
		case branchesURL = "branches_url"
		case cloneURL = "clone_url"
		case collaboratorsURL = "collaborators_url"
		case commentsURL = "comments_url"
		case commitsURL = "commits_url"
		case compareURL = "compare_url"
		case contentsURL = "contents_url"
		case contributorsURL = "contributors_url"
		case createdAt = "created_at"
		case defaultBranch = "default_branch"
		case deleteBranchOnMerge = "delete_branch_on_merge"
		case deploymentsURL = "deployments_url"
		case description, disabled
		case downloadsURL = "downloads_url"
		case eventsURL = "events_url"
		case fork
		case forksCount = "forks_count"
		case forksURL = "forks_url"
		case fullName = "full_name"
		case gitCommitsURL = "git_commits_url"
		case gitRefsURL = "git_refs_url"
		case gitTagsURL = "git_tags_url"
		case gitURL = "git_url"
		case hasDownloads = "has_downloads"
		case hasIssues = "has_issues"
		case hasPages = "has_pages"
		case hasProjects = "has_projects"
		case hasWiki = "has_wiki"
		case homepage
		case hooksURL = "hooks_url"
		case htmlURL = "html_url"
		case id
		case isTemplate = "is_template"
		case issueCommentURL = "issue_comment_url"
		case issueEventsURL = "issue_events_url"
		case issuesURL = "issues_url"
		case keysURL = "keys_url"
		case labelsURL = "labels_url"
		case language
		case languagesURL = "languages_url"
		case mergeCommitMessage = "merge_commit_message"
		case mergeCommitTitle = "merge_commit_title"
		case mergesURL = "merges_url"
		case milestonesURL = "milestones_url"
		case mirrorURL = "mirror_url"
		case name
		case networkCount = "network_count"
		case nodeID = "node_id"
		case notificationsURL = "notifications_url"
		case openIssuesCount = "open_issues_count"
		case owner, permissions
		case templateRepositoryPrivate = "private"
		case pullsURL = "pulls_url"
		case pushedAt = "pushed_at"
		case releasesURL = "releases_url"
		case size
		case squashMergeCommitMessage = "squash_merge_commit_message"
		case squashMergeCommitTitle = "squash_merge_commit_title"
		case sshURL = "ssh_url"
		case stargazersCount = "stargazers_count"
		case stargazersURL = "stargazers_url"
		case statusesURL = "statuses_url"
		case subscribersCount = "subscribers_count"
		case subscribersURL = "subscribers_url"
		case subscriptionURL = "subscription_url"
		case svnURL = "svn_url"
		case tagsURL = "tags_url"
		case teamsURL = "teams_url"
		case tempCloneToken = "temp_clone_token"
		case topics
		case treesURL = "trees_url"
		case updatedAt = "updated_at"
		case url
		case useSquashPRTitleAsDefault = "use_squash_pr_title_as_default"
		case visibility
		case watchersCount = "watchers_count"
	}
}

// MARK: - PurpleOwner
struct PurpleOwner: Codable {
	let avatarURL, eventsURL, followersURL, followingURL: String?
	let gistsURL, gravatarID, htmlURL: String?
	let id: Int?
	let login, nodeID, organizationsURL, receivedEventsURL: String?
	let reposURL: String?
	let siteAdmin: Bool?
	let starredURL, subscriptionsURL, type, url: String?

	enum CodingKeys: String, CodingKey {
		case avatarURL = "avatar_url"
		case eventsURL = "events_url"
		case followersURL = "followers_url"
		case followingURL = "following_url"
		case gistsURL = "gists_url"
		case gravatarID = "gravatar_id"
		case htmlURL = "html_url"
		case id, login
		case nodeID = "node_id"
		case organizationsURL = "organizations_url"
		case receivedEventsURL = "received_events_url"
		case reposURL = "repos_url"
		case siteAdmin = "site_admin"
		case starredURL = "starred_url"
		case subscriptionsURL = "subscriptions_url"
		case type, url
	}
}

// MARK: - PurplePermissions
struct PurplePermissions: Codable {
	let admin, maintain, pull, push: Bool?
	let triage: Bool?
}

// MARK: - GitRepoPermissions
struct GitRepoPermissions: Codable {
	let admin: Bool
	let maintain: Bool?
	let pull, push: Bool
	let triage: Bool?
}

// MARK: - SecurityAndAnalysis
struct SecurityAndAnalysis: Codable {
	let advancedSecurity: AdvancedSecurity?
	/// Enable or disable Dependabot security updates for the repository.
	let dependabotSecurityUpdates: DependabotSecurityUpdates?
	let secretScanning: SecretScanning?
	let secretScanningPushProtection: SecretScanningPushProtection?

	enum CodingKeys: String, CodingKey {
		case advancedSecurity = "advanced_security"
		case dependabotSecurityUpdates = "dependabot_security_updates"
		case secretScanning = "secret_scanning"
		case secretScanningPushProtection = "secret_scanning_push_protection"
	}
}

// MARK: - AdvancedSecurity
struct AdvancedSecurity: Codable {
	let status: Status?
}

/// The enablement status of Dependabot security updates for the repository.
enum Status: String, Codable {
	case disabled = "disabled"
	case enabled = "enabled"
}

/// Enable or disable Dependabot security updates for the repository.
// MARK: - DependabotSecurityUpdates
struct DependabotSecurityUpdates: Codable {
	/// The enablement status of Dependabot security updates for the repository.
	let status: Status?
}

// MARK: - SecretScanning
struct SecretScanning: Codable {
	let status: Status?
}

// MARK: - SecretScanningPushProtection
struct SecretScanningPushProtection: Codable {
	let status: Status?
}

/// A repository on GitHub.
// MARK: - SourceClass
struct SourceClass: Codable {
	/// Whether to allow Auto-merge to be used on pull requests.
	let allowAutoMerge: Bool?
	/// Whether to allow forking this repo
	let allowForking: Bool?
	/// Whether to allow merge commits for pull requests.
	let allowMergeCommit: Bool?
	/// Whether to allow rebase merges for pull requests.
	let allowRebaseMerge: Bool?
	/// Whether to allow squash merges for pull requests.
	let allowSquashMerge: Bool?
	/// Whether or not a pull request head branch that is behind its base branch can always be
	/// updated even if it is not required to be up to date before merging.
	let allowUpdateBranch: Bool?
	/// Whether anonymous git access is enabled for this repository
	let anonymousAccessEnabled: Bool?
	let archiveURL: String
	/// Whether the repository is archived.
	let archived: Bool
	let assigneesURL, blobsURL, branchesURL, cloneURL: String
	let collaboratorsURL, commentsURL, commitsURL, compareURL: String
	let contentsURL, contributorsURL: String
	let createdAt: String?
	/// The default branch of the repository.
	let defaultBranch: String
	/// Whether to delete head branches when pull requests are merged
	let deleteBranchOnMerge: Bool?
	let deploymentsURL: String
	let description: String?
	/// Returns whether or not this repository disabled.
	let disabled: Bool
	let downloadsURL, eventsURL: String
	let fork: Bool
	let forks, forksCount: Int
	let forksURL, fullName, gitCommitsURL, gitRefsURL: String
	let gitTagsURL, gitURL: String
	/// Whether discussions are enabled.
	let hasDiscussions: Bool?
	/// Whether downloads are enabled.
	let hasDownloads: Bool
	/// Whether issues are enabled.
	let hasIssues: Bool
	let hasPages: Bool
	/// Whether projects are enabled.
	let hasProjects: Bool
	/// Whether the wiki is enabled.
	let hasWiki: Bool
	let homepage: String?
	let hooksURL, htmlURL: String
	/// Unique identifier of the repository
	let id: Int
	/// Whether this repository acts as a template that can be used to generate new repositories.
	let isTemplate: Bool?
	let issueCommentURL, issueEventsURL, issuesURL, keysURL: String
	let labelsURL: String
	let language: String?
	let languagesURL: String
	let license: SourceLicenseSimple?
	let masterBranch: String?
	/// The default value for a merge commit message.
	///
	/// - `PR_TITLE` - default to the pull request's title.
	/// - `PR_BODY` - default to the pull request's body.
	/// - `BLANK` - default to a blank commit message.
	let mergeCommitMessage: MergeCommitMessage?
	/// The default value for a merge commit title.
	///
	/// - `PR_TITLE` - default to the pull request's title.
	/// - `MERGE_MESSAGE` - default to the classic title for a merge message (e.g., Merge pull
	/// request #123 from branch-name).
	let mergeCommitTitle: MergeCommitTitle?
	let mergesURL, milestonesURL: String
	let mirrorURL: String?
	/// The name of the repository.
	let name: String
	let networkCount: Int?
	let nodeID, notificationsURL: String
	let openIssues, openIssuesCount: Int
	let organization: SourceSimpleUser?
	/// A GitHub user.
	let owner: SourceOwner
	let permissions: SourcePermissions?
	/// Whether the repository is private or public.
	let repositoryPrivate: Bool
	let pullsURL: String
	let pushedAt: String?
	let releasesURL: String
	/// The size of the repository. Size is calculated hourly. When a repository is initially
	/// created, the size is 0.
	let size: Int
	/// The default value for a squash merge commit message:
	///
	/// - `PR_BODY` - default to the pull request's body.
	/// - `COMMIT_MESSAGES` - default to the branch's commit messages.
	/// - `BLANK` - default to a blank commit message.
	let squashMergeCommitMessage: SquashMergeCommitMessage?
	/// The default value for a squash merge commit title:
	///
	/// - `PR_TITLE` - default to the pull request's title.
	/// - `COMMIT_OR_PR_TITLE` - default to the commit's title (if only one commit) or the pull
	/// request's title (when more than one commit).
	let squashMergeCommitTitle: SquashMergeCommitTitle?
	let sshURL: String
	let stargazersCount: Int
	let stargazersURL: String
	let starredAt: String?
	let statusesURL: String
	let subscribersCount: Int?
	let subscribersURL, subscriptionURL, svnURL, tagsURL: String
	let teamsURL: String
	let tempCloneToken: String?
	let templateRepository: SourceTemplateRepository?
	let topics: [String]?
	let treesURL: String
	let updatedAt: String?
	let url: String
	/// Whether a squash merge commit can use the pull request title as default. **This property
	/// has been deprecated. Please use `squash_merge_commit_title` instead.
	let useSquashPRTitleAsDefault: Bool?
	/// The repository visibility: public, private, or internal.
	let visibility: String?
	let watchers, watchersCount: Int
	/// Whether to require contributors to sign off on web-based commits
	let webCommitSignoffRequired: Bool?

	enum CodingKeys: String, CodingKey {
		case allowAutoMerge = "allow_auto_merge"
		case allowForking = "allow_forking"
		case allowMergeCommit = "allow_merge_commit"
		case allowRebaseMerge = "allow_rebase_merge"
		case allowSquashMerge = "allow_squash_merge"
		case allowUpdateBranch = "allow_update_branch"
		case anonymousAccessEnabled = "anonymous_access_enabled"
		case archiveURL = "archive_url"
		case archived
		case assigneesURL = "assignees_url"
		case blobsURL = "blobs_url"
		case branchesURL = "branches_url"
		case cloneURL = "clone_url"
		case collaboratorsURL = "collaborators_url"
		case commentsURL = "comments_url"
		case commitsURL = "commits_url"
		case compareURL = "compare_url"
		case contentsURL = "contents_url"
		case contributorsURL = "contributors_url"
		case createdAt = "created_at"
		case defaultBranch = "default_branch"
		case deleteBranchOnMerge = "delete_branch_on_merge"
		case deploymentsURL = "deployments_url"
		case description, disabled
		case downloadsURL = "downloads_url"
		case eventsURL = "events_url"
		case fork, forks
		case forksCount = "forks_count"
		case forksURL = "forks_url"
		case fullName = "full_name"
		case gitCommitsURL = "git_commits_url"
		case gitRefsURL = "git_refs_url"
		case gitTagsURL = "git_tags_url"
		case gitURL = "git_url"
		case hasDiscussions = "has_discussions"
		case hasDownloads = "has_downloads"
		case hasIssues = "has_issues"
		case hasPages = "has_pages"
		case hasProjects = "has_projects"
		case hasWiki = "has_wiki"
		case homepage
		case hooksURL = "hooks_url"
		case htmlURL = "html_url"
		case id
		case isTemplate = "is_template"
		case issueCommentURL = "issue_comment_url"
		case issueEventsURL = "issue_events_url"
		case issuesURL = "issues_url"
		case keysURL = "keys_url"
		case labelsURL = "labels_url"
		case language
		case languagesURL = "languages_url"
		case license
		case masterBranch = "master_branch"
		case mergeCommitMessage = "merge_commit_message"
		case mergeCommitTitle = "merge_commit_title"
		case mergesURL = "merges_url"
		case milestonesURL = "milestones_url"
		case mirrorURL = "mirror_url"
		case name
		case networkCount = "network_count"
		case nodeID = "node_id"
		case notificationsURL = "notifications_url"
		case openIssues = "open_issues"
		case openIssuesCount = "open_issues_count"
		case organization, owner, permissions
		case repositoryPrivate = "private"
		case pullsURL = "pulls_url"
		case pushedAt = "pushed_at"
		case releasesURL = "releases_url"
		case size
		case squashMergeCommitMessage = "squash_merge_commit_message"
		case squashMergeCommitTitle = "squash_merge_commit_title"
		case sshURL = "ssh_url"
		case stargazersCount = "stargazers_count"
		case stargazersURL = "stargazers_url"
		case starredAt = "starred_at"
		case statusesURL = "statuses_url"
		case subscribersCount = "subscribers_count"
		case subscribersURL = "subscribers_url"
		case subscriptionURL = "subscription_url"
		case svnURL = "svn_url"
		case tagsURL = "tags_url"
		case teamsURL = "teams_url"
		case tempCloneToken = "temp_clone_token"
		case templateRepository = "template_repository"
		case topics
		case treesURL = "trees_url"
		case updatedAt = "updated_at"
		case url
		case useSquashPRTitleAsDefault = "use_squash_pr_title_as_default"
		case visibility, watchers
		case watchersCount = "watchers_count"
		case webCommitSignoffRequired = "web_commit_signoff_required"
	}
}

/// License Simple
// MARK: - SourceLicenseSimple
struct SourceLicenseSimple: Codable {
	let htmlURL: String?
	let key, name, nodeID: String
	let spdxID, url: String?

	enum CodingKeys: String, CodingKey {
		case htmlURL = "html_url"
		case key, name
		case nodeID = "node_id"
		case spdxID = "spdx_id"
		case url
	}
}

/// A GitHub user.
// MARK: - SourceSimpleUser
struct SourceSimpleUser: Codable {
	let avatarURL: String
	let email: String?
	let eventsURL, followersURL, followingURL, gistsURL: String
	let gravatarID: String?
	let htmlURL: String
	let id: Int
	let login: String
	let name: String?
	let nodeID, organizationsURL, receivedEventsURL, reposURL: String
	let siteAdmin: Bool
	let starredAt: String?
	let starredURL, subscriptionsURL, type, url: String

	enum CodingKeys: String, CodingKey {
		case avatarURL = "avatar_url"
		case email
		case eventsURL = "events_url"
		case followersURL = "followers_url"
		case followingURL = "following_url"
		case gistsURL = "gists_url"
		case gravatarID = "gravatar_id"
		case htmlURL = "html_url"
		case id, login, name
		case nodeID = "node_id"
		case organizationsURL = "organizations_url"
		case receivedEventsURL = "received_events_url"
		case reposURL = "repos_url"
		case siteAdmin = "site_admin"
		case starredAt = "starred_at"
		case starredURL = "starred_url"
		case subscriptionsURL = "subscriptions_url"
		case type, url
	}
}

/// A GitHub user.
// MARK: - SourceOwner
struct SourceOwner: Codable {
	let avatarURL: String
	let email: String?
	let eventsURL, followersURL, followingURL, gistsURL: String
	let gravatarID: String?
	let htmlURL: String
	let id: Int
	let login: String
	let name: String?
	let nodeID, organizationsURL, receivedEventsURL, reposURL: String
	let siteAdmin: Bool
	let starredAt: String?
	let starredURL, subscriptionsURL, type, url: String

	enum CodingKeys: String, CodingKey {
		case avatarURL = "avatar_url"
		case email
		case eventsURL = "events_url"
		case followersURL = "followers_url"
		case followingURL = "following_url"
		case gistsURL = "gists_url"
		case gravatarID = "gravatar_id"
		case htmlURL = "html_url"
		case id, login, name
		case nodeID = "node_id"
		case organizationsURL = "organizations_url"
		case receivedEventsURL = "received_events_url"
		case reposURL = "repos_url"
		case siteAdmin = "site_admin"
		case starredAt = "starred_at"
		case starredURL = "starred_url"
		case subscriptionsURL = "subscriptions_url"
		case type, url
	}
}

// MARK: - SourcePermissions
struct SourcePermissions: Codable {
	let admin: Bool
	let maintain: Bool?
	let pull, push: Bool
	let triage: Bool?
}

// MARK: - SourceTemplateRepository
struct SourceTemplateRepository: Codable {
	let allowAutoMerge, allowMergeCommit, allowRebaseMerge, allowSquashMerge: Bool?
	let allowUpdateBranch: Bool?
	let archiveURL: String?
	let archived: Bool?
	let assigneesURL, blobsURL, branchesURL, cloneURL: String?
	let collaboratorsURL, commentsURL, commitsURL, compareURL: String?
	let contentsURL, contributorsURL, createdAt, defaultBranch: String?
	let deleteBranchOnMerge: Bool?
	let deploymentsURL, description: String?
	let disabled: Bool?
	let downloadsURL, eventsURL: String?
	let fork: Bool?
	let forksCount: Int?
	let forksURL, fullName, gitCommitsURL, gitRefsURL: String?
	let gitTagsURL, gitURL: String?
	let hasDownloads, hasIssues, hasPages, hasProjects: Bool?
	let hasWiki: Bool?
	let homepage, hooksURL, htmlURL: String?
	let id: Int?
	let isTemplate: Bool?
	let issueCommentURL, issueEventsURL, issuesURL, keysURL: String?
	let labelsURL, language, languagesURL: String?
	/// The default value for a merge commit message.
	///
	/// - `PR_TITLE` - default to the pull request's title.
	/// - `PR_BODY` - default to the pull request's body.
	/// - `BLANK` - default to a blank commit message.
	let mergeCommitMessage: MergeCommitMessage?
	/// The default value for a merge commit title.
	///
	/// - `PR_TITLE` - default to the pull request's title.
	/// - `MERGE_MESSAGE` - default to the classic title for a merge message (e.g., Merge pull
	/// request #123 from branch-name).
	let mergeCommitTitle: MergeCommitTitle?
	let mergesURL, milestonesURL, mirrorURL, name: String?
	let networkCount: Int?
	let nodeID, notificationsURL: String?
	let openIssuesCount: Int?
	let owner: FluffyOwner?
	let permissions: FluffyPermissions?
	let templateRepositoryPrivate: Bool?
	let pullsURL, pushedAt, releasesURL: String?
	let size: Int?
	/// The default value for a squash merge commit message:
	///
	/// - `PR_BODY` - default to the pull request's body.
	/// - `COMMIT_MESSAGES` - default to the branch's commit messages.
	/// - `BLANK` - default to a blank commit message.
	let squashMergeCommitMessage: SquashMergeCommitMessage?
	/// The default value for a squash merge commit title:
	///
	/// - `PR_TITLE` - default to the pull request's title.
	/// - `COMMIT_OR_PR_TITLE` - default to the commit's title (if only one commit) or the pull
	/// request's title (when more than one commit).
	let squashMergeCommitTitle: SquashMergeCommitTitle?
	let sshURL: String?
	let stargazersCount: Int?
	let stargazersURL, statusesURL: String?
	let subscribersCount: Int?
	let subscribersURL, subscriptionURL, svnURL, tagsURL: String?
	let teamsURL, tempCloneToken: String?
	let topics: [String]?
	let treesURL, updatedAt, url: String?
	let useSquashPRTitleAsDefault: Bool?
	let visibility: String?
	let watchersCount: Int?

	enum CodingKeys: String, CodingKey {
		case allowAutoMerge = "allow_auto_merge"
		case allowMergeCommit = "allow_merge_commit"
		case allowRebaseMerge = "allow_rebase_merge"
		case allowSquashMerge = "allow_squash_merge"
		case allowUpdateBranch = "allow_update_branch"
		case archiveURL = "archive_url"
		case archived
		case assigneesURL = "assignees_url"
		case blobsURL = "blobs_url"
		case branchesURL = "branches_url"
		case cloneURL = "clone_url"
		case collaboratorsURL = "collaborators_url"
		case commentsURL = "comments_url"
		case commitsURL = "commits_url"
		case compareURL = "compare_url"
		case contentsURL = "contents_url"
		case contributorsURL = "contributors_url"
		case createdAt = "created_at"
		case defaultBranch = "default_branch"
		case deleteBranchOnMerge = "delete_branch_on_merge"
		case deploymentsURL = "deployments_url"
		case description, disabled
		case downloadsURL = "downloads_url"
		case eventsURL = "events_url"
		case fork
		case forksCount = "forks_count"
		case forksURL = "forks_url"
		case fullName = "full_name"
		case gitCommitsURL = "git_commits_url"
		case gitRefsURL = "git_refs_url"
		case gitTagsURL = "git_tags_url"
		case gitURL = "git_url"
		case hasDownloads = "has_downloads"
		case hasIssues = "has_issues"
		case hasPages = "has_pages"
		case hasProjects = "has_projects"
		case hasWiki = "has_wiki"
		case homepage
		case hooksURL = "hooks_url"
		case htmlURL = "html_url"
		case id
		case isTemplate = "is_template"
		case issueCommentURL = "issue_comment_url"
		case issueEventsURL = "issue_events_url"
		case issuesURL = "issues_url"
		case keysURL = "keys_url"
		case labelsURL = "labels_url"
		case language
		case languagesURL = "languages_url"
		case mergeCommitMessage = "merge_commit_message"
		case mergeCommitTitle = "merge_commit_title"
		case mergesURL = "merges_url"
		case milestonesURL = "milestones_url"
		case mirrorURL = "mirror_url"
		case name
		case networkCount = "network_count"
		case nodeID = "node_id"
		case notificationsURL = "notifications_url"
		case openIssuesCount = "open_issues_count"
		case owner, permissions
		case templateRepositoryPrivate = "private"
		case pullsURL = "pulls_url"
		case pushedAt = "pushed_at"
		case releasesURL = "releases_url"
		case size
		case squashMergeCommitMessage = "squash_merge_commit_message"
		case squashMergeCommitTitle = "squash_merge_commit_title"
		case sshURL = "ssh_url"
		case stargazersCount = "stargazers_count"
		case stargazersURL = "stargazers_url"
		case statusesURL = "statuses_url"
		case subscribersCount = "subscribers_count"
		case subscribersURL = "subscribers_url"
		case subscriptionURL = "subscription_url"
		case svnURL = "svn_url"
		case tagsURL = "tags_url"
		case teamsURL = "teams_url"
		case tempCloneToken = "temp_clone_token"
		case topics
		case treesURL = "trees_url"
		case updatedAt = "updated_at"
		case url
		case useSquashPRTitleAsDefault = "use_squash_pr_title_as_default"
		case visibility
		case watchersCount = "watchers_count"
	}
}

// MARK: - FluffyOwner
struct FluffyOwner: Codable {
	let avatarURL, eventsURL, followersURL, followingURL: String?
	let gistsURL, gravatarID, htmlURL: String?
	let id: Int?
	let login, nodeID, organizationsURL, receivedEventsURL: String?
	let reposURL: String?
	let siteAdmin: Bool?
	let starredURL, subscriptionsURL, type, url: String?

	enum CodingKeys: String, CodingKey {
		case avatarURL = "avatar_url"
		case eventsURL = "events_url"
		case followersURL = "followers_url"
		case followingURL = "following_url"
		case gistsURL = "gists_url"
		case gravatarID = "gravatar_id"
		case htmlURL = "html_url"
		case id, login
		case nodeID = "node_id"
		case organizationsURL = "organizations_url"
		case receivedEventsURL = "received_events_url"
		case reposURL = "repos_url"
		case siteAdmin = "site_admin"
		case starredURL = "starred_url"
		case subscriptionsURL = "subscriptions_url"
		case type, url
	}
}

// MARK: - FluffyPermissions
struct FluffyPermissions: Codable {
	let admin, maintain, pull, push: Bool?
	let triage: Bool?
}

/// A repository on GitHub.
// MARK: - Repository
struct Repository: Codable {
	/// Whether to allow Auto-merge to be used on pull requests.
	let allowAutoMerge: Bool?
	/// Whether to allow forking this repo
	let allowForking: Bool?
	/// Whether to allow merge commits for pull requests.
	let allowMergeCommit: Bool?
	/// Whether to allow rebase merges for pull requests.
	let allowRebaseMerge: Bool?
	/// Whether to allow squash merges for pull requests.
	let allowSquashMerge: Bool?
	/// Whether or not a pull request head branch that is behind its base branch can always be
	/// updated even if it is not required to be up to date before merging.
	let allowUpdateBranch: Bool?
	/// Whether anonymous git access is enabled for this repository
	let anonymousAccessEnabled: Bool?
	let archiveURL: String
	/// Whether the repository is archived.
	let archived: Bool
	let assigneesURL, blobsURL, branchesURL, cloneURL: String
	let collaboratorsURL, commentsURL, commitsURL, compareURL: String
	let contentsURL, contributorsURL: String
	let createdAt: String?
	/// The default branch of the repository.
	let defaultBranch: String
	/// Whether to delete head branches when pull requests are merged
	let deleteBranchOnMerge: Bool?
	let deploymentsURL: String
	let description: String?
	/// Returns whether or not this repository disabled.
	let disabled: Bool
	let downloadsURL, eventsURL: String
	let fork: Bool
	let forks, forksCount: Int
	let forksURL, fullName, gitCommitsURL, gitRefsURL: String
	let gitTagsURL, gitURL: String
	/// Whether discussions are enabled.
	let hasDiscussions: Bool?
	/// Whether downloads are enabled.
	let hasDownloads: Bool
	/// Whether issues are enabled.
	let hasIssues: Bool
	let hasPages: Bool
	/// Whether projects are enabled.
	let hasProjects: Bool
	/// Whether the wiki is enabled.
	let hasWiki: Bool
	let homepage: String?
	let hooksURL, htmlURL: String
	/// Unique identifier of the repository
	let id: Int
	/// Whether this repository acts as a template that can be used to generate new repositories.
	let isTemplate: Bool?
	let issueCommentURL, issueEventsURL, issuesURL, keysURL: String
	let labelsURL: String
	let language: String?
	let languagesURL: String
	let license: RepositoryLicenseSimple?
	let masterBranch: String?
	/// The default value for a merge commit message.
	///
	/// - `PR_TITLE` - default to the pull request's title.
	/// - `PR_BODY` - default to the pull request's body.
	/// - `BLANK` - default to a blank commit message.
	let mergeCommitMessage: MergeCommitMessage?
	/// The default value for a merge commit title.
	///
	/// - `PR_TITLE` - default to the pull request's title.
	/// - `MERGE_MESSAGE` - default to the classic title for a merge message (e.g., Merge pull
	/// request #123 from branch-name).
	let mergeCommitTitle: MergeCommitTitle?
	let mergesURL, milestonesURL: String
	let mirrorURL: String?
	/// The name of the repository.
	let name: String
	let networkCount: Int?
	let nodeID, notificationsURL: String
	let openIssues, openIssuesCount: Int
	let organization: RepositorySimpleUser?
	/// A GitHub user.
	let owner: RepositoryOwner
	let permissions: RepositoryPermissions?
	/// Whether the repository is private or public.
	let repositoryPrivate: Bool
	let pullsURL: String
	let pushedAt: String?
	let releasesURL: String
	/// The size of the repository. Size is calculated hourly. When a repository is initially
	/// created, the size is 0.
	let size: Int
	/// The default value for a squash merge commit message:
	///
	/// - `PR_BODY` - default to the pull request's body.
	/// - `COMMIT_MESSAGES` - default to the branch's commit messages.
	/// - `BLANK` - default to a blank commit message.
	let squashMergeCommitMessage: SquashMergeCommitMessage?
	/// The default value for a squash merge commit title:
	///
	/// - `PR_TITLE` - default to the pull request's title.
	/// - `COMMIT_OR_PR_TITLE` - default to the commit's title (if only one commit) or the pull
	/// request's title (when more than one commit).
	let squashMergeCommitTitle: SquashMergeCommitTitle?
	let sshURL: String
	let stargazersCount: Int
	let stargazersURL: String
	let starredAt: String?
	let statusesURL: String
	let subscribersCount: Int?
	let subscribersURL, subscriptionURL, svnURL, tagsURL: String
	let teamsURL: String
	let tempCloneToken: String?
	let templateRepository: RepositoryTemplateRepository?
	let topics: [String]?
	let treesURL: String
	let updatedAt: String?
	let url: String
	/// Whether a squash merge commit can use the pull request title as default. **This property
	/// has been deprecated. Please use `squash_merge_commit_title` instead.
	let useSquashPRTitleAsDefault: Bool?
	/// The repository visibility: public, private, or internal.
	let visibility: String?
	let watchers, watchersCount: Int
	/// Whether to require contributors to sign off on web-based commits
	let webCommitSignoffRequired: Bool?

	enum CodingKeys: String, CodingKey {
		case allowAutoMerge = "allow_auto_merge"
		case allowForking = "allow_forking"
		case allowMergeCommit = "allow_merge_commit"
		case allowRebaseMerge = "allow_rebase_merge"
		case allowSquashMerge = "allow_squash_merge"
		case allowUpdateBranch = "allow_update_branch"
		case anonymousAccessEnabled = "anonymous_access_enabled"
		case archiveURL = "archive_url"
		case archived
		case assigneesURL = "assignees_url"
		case blobsURL = "blobs_url"
		case branchesURL = "branches_url"
		case cloneURL = "clone_url"
		case collaboratorsURL = "collaborators_url"
		case commentsURL = "comments_url"
		case commitsURL = "commits_url"
		case compareURL = "compare_url"
		case contentsURL = "contents_url"
		case contributorsURL = "contributors_url"
		case createdAt = "created_at"
		case defaultBranch = "default_branch"
		case deleteBranchOnMerge = "delete_branch_on_merge"
		case deploymentsURL = "deployments_url"
		case description, disabled
		case downloadsURL = "downloads_url"
		case eventsURL = "events_url"
		case fork, forks
		case forksCount = "forks_count"
		case forksURL = "forks_url"
		case fullName = "full_name"
		case gitCommitsURL = "git_commits_url"
		case gitRefsURL = "git_refs_url"
		case gitTagsURL = "git_tags_url"
		case gitURL = "git_url"
		case hasDiscussions = "has_discussions"
		case hasDownloads = "has_downloads"
		case hasIssues = "has_issues"
		case hasPages = "has_pages"
		case hasProjects = "has_projects"
		case hasWiki = "has_wiki"
		case homepage
		case hooksURL = "hooks_url"
		case htmlURL = "html_url"
		case id
		case isTemplate = "is_template"
		case issueCommentURL = "issue_comment_url"
		case issueEventsURL = "issue_events_url"
		case issuesURL = "issues_url"
		case keysURL = "keys_url"
		case labelsURL = "labels_url"
		case language
		case languagesURL = "languages_url"
		case license
		case masterBranch = "master_branch"
		case mergeCommitMessage = "merge_commit_message"
		case mergeCommitTitle = "merge_commit_title"
		case mergesURL = "merges_url"
		case milestonesURL = "milestones_url"
		case mirrorURL = "mirror_url"
		case name
		case networkCount = "network_count"
		case nodeID = "node_id"
		case notificationsURL = "notifications_url"
		case openIssues = "open_issues"
		case openIssuesCount = "open_issues_count"
		case organization, owner, permissions
		case repositoryPrivate = "private"
		case pullsURL = "pulls_url"
		case pushedAt = "pushed_at"
		case releasesURL = "releases_url"
		case size
		case squashMergeCommitMessage = "squash_merge_commit_message"
		case squashMergeCommitTitle = "squash_merge_commit_title"
		case sshURL = "ssh_url"
		case stargazersCount = "stargazers_count"
		case stargazersURL = "stargazers_url"
		case starredAt = "starred_at"
		case statusesURL = "statuses_url"
		case subscribersCount = "subscribers_count"
		case subscribersURL = "subscribers_url"
		case subscriptionURL = "subscription_url"
		case svnURL = "svn_url"
		case tagsURL = "tags_url"
		case teamsURL = "teams_url"
		case tempCloneToken = "temp_clone_token"
		case templateRepository = "template_repository"
		case topics
		case treesURL = "trees_url"
		case updatedAt = "updated_at"
		case url
		case useSquashPRTitleAsDefault = "use_squash_pr_title_as_default"
		case visibility, watchers
		case watchersCount = "watchers_count"
		case webCommitSignoffRequired = "web_commit_signoff_required"
	}
}

/// License Simple
// MARK: - RepositoryLicenseSimple
struct RepositoryLicenseSimple: Codable {
	let htmlURL: String?
	let key, name, nodeID: String
	let spdxID, url: String?

	enum CodingKeys: String, CodingKey {
		case htmlURL = "html_url"
		case key, name
		case nodeID = "node_id"
		case spdxID = "spdx_id"
		case url
	}
}

/// A GitHub user.
// MARK: - RepositorySimpleUser
struct RepositorySimpleUser: Codable {
	let avatarURL: String
	let email: String?
	let eventsURL, followersURL, followingURL, gistsURL: String
	let gravatarID: String?
	let htmlURL: String
	let id: Int
	let login: String
	let name: String?
	let nodeID, organizationsURL, receivedEventsURL, reposURL: String
	let siteAdmin: Bool
	let starredAt: String?
	let starredURL, subscriptionsURL, type, url: String

	enum CodingKeys: String, CodingKey {
		case avatarURL = "avatar_url"
		case email
		case eventsURL = "events_url"
		case followersURL = "followers_url"
		case followingURL = "following_url"
		case gistsURL = "gists_url"
		case gravatarID = "gravatar_id"
		case htmlURL = "html_url"
		case id, login, name
		case nodeID = "node_id"
		case organizationsURL = "organizations_url"
		case receivedEventsURL = "received_events_url"
		case reposURL = "repos_url"
		case siteAdmin = "site_admin"
		case starredAt = "starred_at"
		case starredURL = "starred_url"
		case subscriptionsURL = "subscriptions_url"
		case type, url
	}
}

/// A GitHub user.
// MARK: - RepositoryOwner
struct RepositoryOwner: Codable {
	let avatarURL: String
	let email: String?
	let eventsURL, followersURL, followingURL, gistsURL: String
	let gravatarID: String?
	let htmlURL: String
	let id: Int
	let login: String
	let name: String?
	let nodeID, organizationsURL, receivedEventsURL, reposURL: String
	let siteAdmin: Bool
	let starredAt: String?
	let starredURL, subscriptionsURL, type, url: String

	enum CodingKeys: String, CodingKey {
		case avatarURL = "avatar_url"
		case email
		case eventsURL = "events_url"
		case followersURL = "followers_url"
		case followingURL = "following_url"
		case gistsURL = "gists_url"
		case gravatarID = "gravatar_id"
		case htmlURL = "html_url"
		case id, login, name
		case nodeID = "node_id"
		case organizationsURL = "organizations_url"
		case receivedEventsURL = "received_events_url"
		case reposURL = "repos_url"
		case siteAdmin = "site_admin"
		case starredAt = "starred_at"
		case starredURL = "starred_url"
		case subscriptionsURL = "subscriptions_url"
		case type, url
	}
}

// MARK: - RepositoryPermissions
struct RepositoryPermissions: Codable {
	let admin: Bool
	let maintain: Bool?
	let pull, push: Bool
	let triage: Bool?
}

// MARK: - RepositoryTemplateRepository
struct RepositoryTemplateRepository: Codable {
	let allowAutoMerge, allowMergeCommit, allowRebaseMerge, allowSquashMerge: Bool?
	let allowUpdateBranch: Bool?
	let archiveURL: String?
	let archived: Bool?
	let assigneesURL, blobsURL, branchesURL, cloneURL: String?
	let collaboratorsURL, commentsURL, commitsURL, compareURL: String?
	let contentsURL, contributorsURL, createdAt, defaultBranch: String?
	let deleteBranchOnMerge: Bool?
	let deploymentsURL, description: String?
	let disabled: Bool?
	let downloadsURL, eventsURL: String?
	let fork: Bool?
	let forksCount: Int?
	let forksURL, fullName, gitCommitsURL, gitRefsURL: String?
	let gitTagsURL, gitURL: String?
	let hasDownloads, hasIssues, hasPages, hasProjects: Bool?
	let hasWiki: Bool?
	let homepage, hooksURL, htmlURL: String?
	let id: Int?
	let isTemplate: Bool?
	let issueCommentURL, issueEventsURL, issuesURL, keysURL: String?
	let labelsURL, language, languagesURL: String?
	/// The default value for a merge commit message.
	///
	/// - `PR_TITLE` - default to the pull request's title.
	/// - `PR_BODY` - default to the pull request's body.
	/// - `BLANK` - default to a blank commit message.
	let mergeCommitMessage: MergeCommitMessage?
	/// The default value for a merge commit title.
	///
	/// - `PR_TITLE` - default to the pull request's title.
	/// - `MERGE_MESSAGE` - default to the classic title for a merge message (e.g., Merge pull
	/// request #123 from branch-name).
	let mergeCommitTitle: MergeCommitTitle?
	let mergesURL, milestonesURL, mirrorURL, name: String?
	let networkCount: Int?
	let nodeID, notificationsURL: String?
	let openIssuesCount: Int?
	let owner: TentacledOwner?
	let permissions: TentacledPermissions?
	let templateRepositoryPrivate: Bool?
	let pullsURL, pushedAt, releasesURL: String?
	let size: Int?
	/// The default value for a squash merge commit message:
	///
	/// - `PR_BODY` - default to the pull request's body.
	/// - `COMMIT_MESSAGES` - default to the branch's commit messages.
	/// - `BLANK` - default to a blank commit message.
	let squashMergeCommitMessage: SquashMergeCommitMessage?
	/// The default value for a squash merge commit title:
	///
	/// - `PR_TITLE` - default to the pull request's title.
	/// - `COMMIT_OR_PR_TITLE` - default to the commit's title (if only one commit) or the pull
	/// request's title (when more than one commit).
	let squashMergeCommitTitle: SquashMergeCommitTitle?
	let sshURL: String?
	let stargazersCount: Int?
	let stargazersURL, statusesURL: String?
	let subscribersCount: Int?
	let subscribersURL, subscriptionURL, svnURL, tagsURL: String?
	let teamsURL, tempCloneToken: String?
	let topics: [String]?
	let treesURL, updatedAt, url: String?
	let useSquashPRTitleAsDefault: Bool?
	let visibility: String?
	let watchersCount: Int?

	enum CodingKeys: String, CodingKey {
		case allowAutoMerge = "allow_auto_merge"
		case allowMergeCommit = "allow_merge_commit"
		case allowRebaseMerge = "allow_rebase_merge"
		case allowSquashMerge = "allow_squash_merge"
		case allowUpdateBranch = "allow_update_branch"
		case archiveURL = "archive_url"
		case archived
		case assigneesURL = "assignees_url"
		case blobsURL = "blobs_url"
		case branchesURL = "branches_url"
		case cloneURL = "clone_url"
		case collaboratorsURL = "collaborators_url"
		case commentsURL = "comments_url"
		case commitsURL = "commits_url"
		case compareURL = "compare_url"
		case contentsURL = "contents_url"
		case contributorsURL = "contributors_url"
		case createdAt = "created_at"
		case defaultBranch = "default_branch"
		case deleteBranchOnMerge = "delete_branch_on_merge"
		case deploymentsURL = "deployments_url"
		case description, disabled
		case downloadsURL = "downloads_url"
		case eventsURL = "events_url"
		case fork
		case forksCount = "forks_count"
		case forksURL = "forks_url"
		case fullName = "full_name"
		case gitCommitsURL = "git_commits_url"
		case gitRefsURL = "git_refs_url"
		case gitTagsURL = "git_tags_url"
		case gitURL = "git_url"
		case hasDownloads = "has_downloads"
		case hasIssues = "has_issues"
		case hasPages = "has_pages"
		case hasProjects = "has_projects"
		case hasWiki = "has_wiki"
		case homepage
		case hooksURL = "hooks_url"
		case htmlURL = "html_url"
		case id
		case isTemplate = "is_template"
		case issueCommentURL = "issue_comment_url"
		case issueEventsURL = "issue_events_url"
		case issuesURL = "issues_url"
		case keysURL = "keys_url"
		case labelsURL = "labels_url"
		case language
		case languagesURL = "languages_url"
		case mergeCommitMessage = "merge_commit_message"
		case mergeCommitTitle = "merge_commit_title"
		case mergesURL = "merges_url"
		case milestonesURL = "milestones_url"
		case mirrorURL = "mirror_url"
		case name
		case networkCount = "network_count"
		case nodeID = "node_id"
		case notificationsURL = "notifications_url"
		case openIssuesCount = "open_issues_count"
		case owner, permissions
		case templateRepositoryPrivate = "private"
		case pullsURL = "pulls_url"
		case pushedAt = "pushed_at"
		case releasesURL = "releases_url"
		case size
		case squashMergeCommitMessage = "squash_merge_commit_message"
		case squashMergeCommitTitle = "squash_merge_commit_title"
		case sshURL = "ssh_url"
		case stargazersCount = "stargazers_count"
		case stargazersURL = "stargazers_url"
		case statusesURL = "statuses_url"
		case subscribersCount = "subscribers_count"
		case subscribersURL = "subscribers_url"
		case subscriptionURL = "subscription_url"
		case svnURL = "svn_url"
		case tagsURL = "tags_url"
		case teamsURL = "teams_url"
		case tempCloneToken = "temp_clone_token"
		case topics
		case treesURL = "trees_url"
		case updatedAt = "updated_at"
		case url
		case useSquashPRTitleAsDefault = "use_squash_pr_title_as_default"
		case visibility
		case watchersCount = "watchers_count"
	}
}

// MARK: - TentacledOwner
struct TentacledOwner: Codable {
	let avatarURL, eventsURL, followersURL, followingURL: String?
	let gistsURL, gravatarID, htmlURL: String?
	let id: Int?
	let login, nodeID, organizationsURL, receivedEventsURL: String?
	let reposURL: String?
	let siteAdmin: Bool?
	let starredURL, subscriptionsURL, type, url: String?

	enum CodingKeys: String, CodingKey {
		case avatarURL = "avatar_url"
		case eventsURL = "events_url"
		case followersURL = "followers_url"
		case followingURL = "following_url"
		case gistsURL = "gists_url"
		case gravatarID = "gravatar_id"
		case htmlURL = "html_url"
		case id, login
		case nodeID = "node_id"
		case organizationsURL = "organizations_url"
		case receivedEventsURL = "received_events_url"
		case reposURL = "repos_url"
		case siteAdmin = "site_admin"
		case starredURL = "starred_url"
		case subscriptionsURL = "subscriptions_url"
		case type, url
	}
}

// MARK: - TentacledPermissions
struct TentacledPermissions: Codable {
	let admin, maintain, pull, push: Bool?
	let triage: Bool?
}

