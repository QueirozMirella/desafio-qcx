**
 * @api {get} /issues 1 - Get All
 * @apiVersion 0.1.0
 * @apiName GetIssues
 * @apiGroup Issues
 *
 * @apiDescription Returns a list of issues
 *
 *
 * @apiExample Example usage:
 * curl -i http://octoevents.herokuapp.com/issues -H "Content-type: application/json" -H "Accept: application/json"
 *
 * @apiSuccess {Number}     id              The -ID.
 * @apiSuccess {Number}     number          Github API Issue Number (Use this attribute to search events in /issues/:number/events)
 * @apiSuccess {String}     title           Issue Title.
 * @apiSuccess {Number}     github_id       Github api ID
 * @apiSuccess {Date}       created_at      Created at Timestamp
 * @apiSuccess {Date}       updated_at      Updated At Timestamp
 *
 *
 * @apiSuccessExample Response (example):
 * HTTP/1.1 200 OK
 *  [
 *      {
 *        id: 1,
 *        number: 1,
 *        title: "Make API docs and API doc search easier to access",
 *        github_id: "336169565",
 *        created_at: "2018-06-27T10:35:44.550Z",
 *        updated_at: "2018-06-27T10:35:44.550Z"
 *      }
 *  ]
 *
 *  @apiSampleRequest http://octoevents.herokuapp.com/issues
 */

/**
 * @api {get} /issues/:id 2 - Show Issue
 * @apiVersion 0.1.0
 * @apiName GetIssue
 * @apiGroup Issues
 *
 * @apiDescription Returns details of an Issue
 *
 * @apiParam {Number} id The Issue-ID.
 *
 * @apiExample Example usage:
 * curl -i http://octoevents.herokuapp.com/issues/1 -H "Content-type: application/json" -H "Accept: application/json"
 *
 * @apiSuccess {Number}     id              The -ID.
 * @apiSuccess {Number}     number          Github API Issue Number (Use this attribute to search events in /issues/:number/events)
 * @apiSuccess {String}     title           Issue Title.
 * @apiSuccess {Number}     github_id       Github api ID
 * @apiSuccess {Date}       created_at      Created at Timestamp
 * @apiSuccess {Date}       updated_at      Updated At Timestamp
 *
 * @apiError IssueNotFound   The <code>id</code> of the Issue was not found.
 *
 * @apiErrorExample Response (example):
 *     HTTP/1.1 404 Not Found
 *     {
 *        errors: "Record Not Found"
 *     }
 *
 */

/**
 * @api {get} /issues/:number/events 3 - List Events
 * @apiVersion 0.1.0
 * @apiName GetIssueEvent
 * @apiGroup Issues
 *
 * @apiDescription Returns a list of issue events
 *
 * @apiParam {Number} number The Issue github number
 *
 * @apiExample Example usage:
 * curl -i http://octoevents.herokuapp.com/issues/1/events -H "Content-type: application/json" -H "Accept: application/json"
 *
 * @apiSuccess {Number}     id              The Event ID.
 * @apiSuccess {String}     Action          Event action
 * @apiSuccess {Number}     issue_id        Issue that event belongs.
 * @apiSuccess {Date}       created_at      Created at Timestamp
 * @apiSuccess {Date}       updated_at      Updated At Timestamp
 *
 * @apiError IssueNotFound   The <code>id</code> of the Issue was not found.
 *  * @apiSuccessExample Response (example):
 * HTTP/1.1 200 OK
 *  [
 *      {
 *        id: 1,
 *        number: 1,
 *        title: "Make API docs and API doc search easier to access",
 *        github_id: "336169565",
 *        created_at: "2018-06-27T10:35:44.550Z",
 *        updated_at: "2018-06-27T10:35:44.550Z"
 *      }
 *  ]
 *
 * @apiErrorExample Response (example):
 *     HTTP/1.1 404 Not Found
 *     {
 *        errors: "Record Not Found"
 *     }
 *
 */