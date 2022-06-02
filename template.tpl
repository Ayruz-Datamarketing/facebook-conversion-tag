___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Facebook Conversion Tag",
  "categories": [
    "ADVERTISING",
    "ANALYTICS",
    "CONVERSIONS",
    "MARKETING",
    "REMARKETING"
  ],
  "brand": {
    "id": "github.com_ayruz-data-marketing",
    "displayName": "Ayruz-data-marketing"
  },
  "description": "Tag that send the event data to Facebook Conversion API.",
  "containerContexts": [
    "SERVER"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "accessToken",
    "displayName": "API Access Token",
    "simpleValueType": true,
    "help": "Set your Facebook API Access Token.",
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ]
  },
  {
    "type": "TEXT",
    "name": "pixelId",
    "displayName": "Facebook Pixel ID",
    "simpleValueType": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ],
    "help": "Set a Facebook Pixel ID."
  },
  {
    "type": "SELECT",
    "name": "inheritEventName",
    "displayName": "Event Name Setup Method",
    "selectItems": [
      {
        "value": "inherit",
        "displayValue": "Inherit from client"
      },
      {
        "value": "override",
        "displayValue": "Override"
      }
    ],
    "simpleValueType": true,
    "subParams": [
      {
        "type": "RADIO",
        "name": "eventName",
        "radioItems": [
          {
            "value": "standard",
            "displayValue": "Standard",
            "subParams": [
              {
                "type": "SELECT",
                "name": "eventNameStandard",
                "macrosInSelect": false,
                "selectItems": [
                  {
                    "value": "PageView",
                    "displayValue": "PageView"
                  },
                  {
                    "value": "AddPaymentInfo",
                    "displayValue": "AddPaymentInfo"
                  },
                  {
                    "value": "AddToCart",
                    "displayValue": "AddToCart"
                  },
                  {
                    "value": "AddToWishlist",
                    "displayValue": "AddToWishlist"
                  },
                  {
                    "value": "CompleteRegistration",
                    "displayValue": "CompleteRegistration"
                  },
                  {
                    "value": "Contact",
                    "displayValue": "Contact"
                  },
                  {
                    "value": "CustomizeProduct",
                    "displayValue": "CustomizeProduct"
                  },
                  {
                    "value": "Donate",
                    "displayValue": "Donate"
                  },
                  {
                    "value": "FindLocation",
                    "displayValue": "FindLocation"
                  },
                  {
                    "value": "InitiateCheckout",
                    "displayValue": "InitiateCheckout"
                  },
                  {
                    "value": "Lead",
                    "displayValue": "Lead"
                  },
                  {
                    "value": "Purchase",
                    "displayValue": "Purchase"
                  },
                  {
                    "value": "Schedule",
                    "displayValue": "Schedule"
                  },
                  {
                    "value": "Search",
                    "displayValue": "Search"
                  },
                  {
                    "value": "StartTrial",
                    "displayValue": "StartTrial"
                  },
                  {
                    "value": "SubmitApplication",
                    "displayValue": "SubmitApplication"
                  },
                  {
                    "value": "Subscribe",
                    "displayValue": "Subscribe"
                  },
                  {
                    "value": "ViewContent",
                    "displayValue": "ViewContent"
                  }
                ],
                "simpleValueType": true
              }
            ]
          },
          {
            "value": "custom",
            "displayValue": "Custom",
            "subParams": [
              {
                "type": "TEXT",
                "name": "eventNameCustom",
                "simpleValueType": true
              }
            ]
          }
        ],
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "inheritEventName",
            "paramValue": "override",
            "type": "EQUALS"
          }
        ],
        "displayName": "Event Type"
      }
    ]
  },
  {
    "type": "TEXT",
    "name": "testId",
    "displayName": "Test ID",
    "simpleValueType": true,
    "help": "Provide a Test ID if you want to test server-side events in the Test Events feature of Events Manager.",
    "valueHint": "TEST123"
  },
  {
    "type": "CHECKBOX",
    "name": "generateFbp",
    "checkboxText": "Generate _fbp cookie if it not exist",
    "simpleValueType": true
  },
  {
    "type": "CHECKBOX",
    "name": "useHttpOnlyCookie",
    "checkboxText": "Use HttpOnly cookies",
    "simpleValueType": true,
    "help": "Forbids JavaScript from accessing the cookie if enabled."
  },
  {
    "displayName": "Server Event Data Override",
    "name": "serverEventDataListGroup",
    "groupStyle": "ZIPPY_CLOSED",
    "type": "GROUP",
    "subParams": [
      {
        "name": "serverEventDataList",
        "simpleTableColumns": [
          {
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ],
            "defaultValue": "event_id",
            "displayName": "Property Name",
            "name": "name",
            "isUnique": true,
            "type": "SELECT",
            "selectItems": [
              {
                "value": "action_source",
                "displayValue": "Action Source"
              },
              {
                "value": "event_time",
                "displayValue": "Event Time"
              },
              {
                "value": "event_source_url",
                "displayValue": "Source URL"
              },
              {
                "value": "opt_out",
                "displayValue": "Opt Out"
              },
              {
                "value": "event_id",
                "displayValue": "Event ID"
              },
              {
                "value": "data_processing_options",
                "displayValue": "Data Processing Options"
              },
              {
                "value": "data_processing_options_country",
                "displayValue": "Data Processing Options Country"
              },
              {
                "value": "data_processing_options_state",
                "displayValue": "Data Processing Options State"
              }
            ]
          },
          {
            "defaultValue": "",
            "displayName": "Property Value",
            "name": "value",
            "type": "TEXT"
          }
        ],
        "type": "SIMPLE_TABLE",
        "newRowButtonText": "Add property"
      }
    ],
    "help": "See \u003ca href\u003d\"https://developers.facebook.com/docs/marketing-api/conversions-api/parameters/server-event\" target\u003d\"_blank\"\u003ethis documentation\u003c/a\u003e for more details on what data parameters you can override."
  },
  {
    "displayName": "User Data",
    "name": "userDataListGroup",
    "groupStyle": "ZIPPY_CLOSED",
    "type": "GROUP",
    "subParams": [
      {
        "name": "userDataList",
        "simpleTableColumns": [
          {
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ],
            "defaultValue": "em",
            "displayName": "Property Name",
            "name": "name",
            "isUnique": true,
            "type": "SELECT",
            "selectItems": [
              {
                "value": "em",
                "displayValue": "Email"
              },
              {
                "value": "ph",
                "displayValue": "Phone"
              },
              {
                "value": "ge",
                "displayValue": "Gender"
              },
              {
                "value": "db",
                "displayValue": "Date of Birth"
              },
              {
                "value": "ln",
                "displayValue": "Last Name"
              },
              {
                "value": "fn",
                "displayValue": "First Name"
              },
              {
                "value": "ct",
                "displayValue": "City"
              },
              {
                "value": "st",
                "displayValue": "State"
              },
              {
                "value": "zp",
                "displayValue": "Zip"
              },
              {
                "value": "country",
                "displayValue": "Country"
              },
              {
                "value": "external_id",
                "displayValue": "External ID"
              },
              {
                "value": "client_ip_address",
                "displayValue": "Client IP address"
              },
              {
                "value": "client_user_agent",
                "displayValue": "Client user agent"
              },
              {
                "value": "fbc",
                "displayValue": "Click ID"
              },
              {
                "value": "fbp",
                "displayValue": "Browser ID"
              },
              {
                "value": "subscription_id",
                "displayValue": "Subscription ID"
              },
              {
                "value": "lead_id",
                "displayValue": "Lead ID"
              },
              {
                "value": "fb_login_id",
                "displayValue": "FB Login ID"
              }
            ]
          },
          {
            "defaultValue": "",
            "displayName": "Property Value",
            "name": "value",
            "type": "TEXT"
          }
        ],
        "type": "SIMPLE_TABLE",
        "newRowButtonText": "Add property"
      }
    ],
    "help": "See \u003ca href\u003d\"https://developers.facebook.com/docs/marketing-api/server-side-api/parameters/user-data\" target\u003d\"_blank\"\u003ethis documentation\u003c/a\u003e for more details on what user data parameters you can add to the call. If the documentation requires the parameter to be hashed, you \u003cstrong\u003emust\u003c/strong\u003e hash it with SHA256, or the tag will do this automatically before sending the event to Facebook."
  },
  {
    "displayName": "Custom Data",
    "name": "customDataListGroup",
    "groupStyle": "ZIPPY_CLOSED",
    "type": "GROUP",
    "subParams": [
      {
        "name": "customDataList",
        "simpleTableColumns": [
          {
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ],
            "defaultValue": "",
            "displayName": "Property Name",
            "name": "name",
            "isUnique": true,
            "type": "TEXT"
          },
          {
            "defaultValue": "",
            "displayName": "Property Value",
            "name": "value",
            "type": "TEXT"
          }
        ],
        "type": "SIMPLE_TABLE",
        "newRowButtonText": "Add property"
      }
    ],
    "help": "See \u003ca href\u003d\"https://developers.facebook.com/docs/marketing-api/conversions-api/parameters/custom-data\" target\u003d\"_blank\"\u003ethis documentation\u003c/a\u003e for more details on what data parameters you can add to the call."
  }
]


___SANDBOXED_JS_FOR_SERVER___

const getAllEventData = require('getAllEventData');
const sendHttpRequest = require('sendHttpRequest');
const setCookie = require('setCookie');
const getCookieValues = require('getCookieValues');
const getTimestampMillis = require('getTimestampMillis');
const getContainerVersion = require('getContainerVersion');
const encodeUriComponent = require('encodeUriComponent');
const parseUrl = require('parseUrl');
const Math = require('Math');
const JSON = require('JSON');
const log = require('logToConsole');
const getType = require('getType');
const sha256Sync = require('sha256Sync');
const decodeUriComponent = require('decodeUriComponent');
const computeEffectiveTldPlusOne = require('computeEffectiveTldPlusOne');
const generateRandom = require('generateRandom');
const getRequestHeader = require('getRequestHeader');

const traceId = getRequestHeader('trace-id');
const eventData = getAllEventData();

let fbc = getCookieValues('_fbc')[0];
let fbp = getCookieValues('_fbp')[0];

if (!fbc) fbc = eventData._fbc;
if (!fbp) fbp = eventData._fbp;

const url = eventData.page_location || getRequestHeader('referer');
const sdIndex = url ? computeEffectiveTldPlusOne(url).split('.').length - 1 : 1;

if (url) {
    const urlParsed = parseUrl(url);

    if (urlParsed && urlParsed.searchParams.fbclid) {
        if (!fbc || (fbc && fbc.split('.')[fbc.split('.').length - 1] !== decodeUriComponent(urlParsed.searchParams.fbclid))) {
            fbc = 'fb.' + sdIndex + '.' + getTimestampMillis() + '.' + decodeUriComponent(urlParsed.searchParams.fbclid);
        }
    }
}

if (!fbp && data.generateFbp) {
    fbp = 'fb.' + sdIndex + '.' + getTimestampMillis() + '.' + generateRandom(1000000000, 2147483647);
}

const urlToCall = 'https://graph.facebook.com/v13.0/' + encodeUriComponent(data.pixelId) + '/events?access_token=' + encodeUriComponent(data.accessToken);
const mappedEventData = mapEventData(eventData, data);
const postBody = {data: [mappedEventData]};

if (eventData.test_event_code || data.testId) {
    postBody.test_event_code = eventData.test_event_code ? eventData.test_event_code : data.testId;
}

sendHttpRequest(urlToCall, (statusCode, headers, body) => {
        log(JSON.stringify({
            'Name': 'Facebook',
            'Type': 'Response',
            'TraceId': traceId,
            'EventName': mappedEventData.event_name,
            'ResponseStatusCode': statusCode,
            'ResponseHeaders': headers,
            'ResponseBody': body,
        }));

    if (statusCode >= 200 && statusCode < 300) {
        if (fbc) {
            setCookie('_fbc', fbc, {
                domain: 'auto',
                path: '/',
                samesite: 'Lax',
                secure: true,
                'max-age': 63072000,
                HttpOnly: !!data.useHttpOnlyCookie
            });
        }

        if (fbp) {
            setCookie('_fbp', fbp, {
                domain: 'auto',
                path: '/',
                samesite: 'Lax',
                secure: true,
                'max-age': 63072000,
                HttpOnly: !!data.useHttpOnlyCookie
            });
        }

        data.gtmOnSuccess();
    } else {
        data.gtmOnFailure();
    }
}, {headers: {'content-type': 'application/json'}, method: 'POST'}, JSON.stringify(postBody));

function mapEventData(eventData, data) {
    let eventName = getEventName(data);

    let mappedData = {
        event_name: eventName,
        action_source: 'website',
        event_source_url: eventData.page_location,
        event_time: Math.round(getTimestampMillis() / 1000),
        custom_data: {},
        user_data: {
            client_ip_address: eventData.ip_override,
            client_user_agent: eventData.user_agent,
        }
    };

    if (fbc) mappedData.user_data.fbc = fbc;
    if (fbp) mappedData.user_data.fbp = fbp;

    mappedData = getServerEventData(eventData, data, mappedData);
    mappedData = getUserData(eventData, mappedData);
    mappedData = getEcommerceData(eventData, mappedData);
    mappedData = overrideDataIfNeeded(data, mappedData);
    mappedData = cleanupData(mappedData);
    mappedData = hashDataIfNeeded(mappedData);

    return mappedData;
}

function getEventName(data) {
    if (data.inheritEventName === 'inherit') {
        let eventName = eventData.event_name;

        let gaToFacebookEventName = {
            'page_view': 'PageView',
            "gtm.dom": "PageView",
            'add_payment_info': 'AddPaymentInfo',
            'add_to_cart': 'AddToCart',
            'add_to_wishlist': 'AddToWishlist',
            'sign_up': 'CompleteRegistration',
            'begin_checkout': 'InitiateCheckout',
            'generate_lead': 'Lead',
            'purchase': 'Purchase',
            'search': 'Search',
            'view_item': 'ViewContent',

            'contact': 'Contact',
            'customize_product': 'CustomizeProduct',
            'donate': 'Donate',
            'find_location': 'FindLocation',
            'schedule': 'Schedule',
            'start_trial': 'StartTrial',
            'submit_application': 'SubmitApplication',
            'subscribe': 'Subscribe',

            'gtm4wp.addProductToCartEEC': 'AddToCart',
            'gtm4wp.productClickEEC': 'ViewContent',
            'gtm4wp.checkoutOptionEEC': 'InitiateCheckout',
            'gtm4wp.checkoutStepEEC': 'AddPaymentInfo',
            'gtm4wp.orderCompletedEEC': 'Purchase'
        };

        if (!gaToFacebookEventName[eventName]) {
            return eventName;
        }

        return gaToFacebookEventName[eventName];
    }

    return data.eventName === 'standard' ? data.eventNameStandard : data.eventNameCustom;
}

function isHashed(value) {
    if (!value) {
        return false;
    }

    return value.match('^[A-Fa-f0-9]{64}$') !== null;
}

function hashData(value) {
    if (!value) {
        return value;
    }

    const type = getType(value);

    if (type === 'undefined' || value === 'undefined') {
        return undefined;
    }

    if (type === 'object') {
        return value.map(val => {
            return hashData(val);
        });
    }

    if (isHashed(value)) {
        return value;
    }

    return sha256Sync(value.trim().toLowerCase(), {outputEncoding: 'hex'});
}

function hashDataIfNeeded(mappedData) {
    if (mappedData.user_data) {
        for (let key in mappedData.user_data) {
            if (key === 'em' || key === 'ph' || key === 'ge' || key === 'db' || key === 'ln' || key === 'fn' || key === 'ct' || key === 'st' || key === 'zp' || key === 'country') {
                mappedData.user_data[key] = hashData(mappedData.user_data[key]);
            }
        }
    }

    return mappedData;
}

function overrideDataIfNeeded(data, mappedData) {
    if (data.userDataList) {
        data.userDataList.forEach(d => {
            mappedData.user_data[d.name] = d.value;
        });
    }

    if (data.customDataList) {
        data.customDataList.forEach(d => {
            mappedData.custom_data[d.name] = d.value;
        });
    }

    return mappedData;
}

function cleanupData(mappedData) {
    if (mappedData.user_data) {
        let userData = {};

        for (let userDataKey in mappedData.user_data) {
            if (mappedData.user_data[userDataKey]) {
                userData[userDataKey] = mappedData.user_data[userDataKey];
            }
        }

        mappedData.user_data = userData;
    }

    if (mappedData.custom_data) {
        let customData = {};

        for (let customDataKey in mappedData.custom_data) {
            if (mappedData.custom_data[customDataKey] || customDataKey === 'value') {
                customData[customDataKey] = mappedData.custom_data[customDataKey];
            }
        }

        mappedData.custom_data = customData;
    }

    return mappedData;
}

function getServerEventData(eventData, data, mappedData) {
    let serverEventDataList = {};

    if (eventData.event_id) mappedData.event_id = eventData.event_id;
    else if (eventData.transaction_id) mappedData.event_id = eventData.transaction_id;

    if (data.serverEventDataList) {
        data.serverEventDataList.forEach(d => {
            serverEventDataList[d.name] = d.value;
        });
    }

    if (serverEventDataList) {
        if (serverEventDataList.action_source) mappedData.action_source = serverEventDataList.action_source;
        if (serverEventDataList.event_time) mappedData.event_time = serverEventDataList.event_time;
        if (serverEventDataList.event_source_url) mappedData.event_source_url = serverEventDataList.event_source_url;
        if (serverEventDataList.opt_out) mappedData.opt_out = serverEventDataList.opt_out;
        if (serverEventDataList.event_id) mappedData.event_id = serverEventDataList.event_id;

        if (serverEventDataList.data_processing_options) {
            mappedData.data_processing_options = serverEventDataList.data_processing_options;

            if (serverEventDataList.data_processing_options_country) mappedData.data_processing_options_country = serverEventDataList.data_processing_options_country;
            if (serverEventDataList.data_processing_options_state) mappedData.data_processing_options_state = serverEventDataList.data_processing_options_state;
        }
    }

    return mappedData;
}

function getUserData(eventData, mappedData) {
    if (eventData.fb_login_id) mappedData.user_data.fb_login_id = eventData.fb_login_id;

    if (eventData.external_id) mappedData.user_data.external_id = eventData.external_id;
    else if (eventData.user_id) mappedData.user_data.external_id = eventData.user_id;
    else if (eventData.userId) mappedData.user_data.external_id = eventData.userId;

    if (eventData.subscription_id) mappedData.user_data.subscription_id = eventData.subscription_id;
    else if (eventData.subscriptionId) mappedData.user_data.subscription_id = eventData.subscriptionId;

    if (eventData.lead_id) mappedData.user_data.lead_id = eventData.lead_id;
    else if (eventData.leadId) mappedData.user_data.lead_id = eventData.leadId;

    if (eventData.lastName) mappedData.user_data.ln = eventData.lastName;
    else if (eventData.LastName) mappedData.user_data.ln = eventData.LastName;
    else if (eventData.nameLast) mappedData.user_data.ln = eventData.nameLast;
    else if (eventData.user_data && eventData.user_data.address && eventData.user_data.address.last_name) mappedData.user_data.ln = eventData.user_data.address.last_name;

    if (eventData.firstName) mappedData.user_data.fn = eventData.firstName;
    else if (eventData.FirstName) mappedData.user_data.fn = eventData.FirstName;
    else if (eventData.nameFirst) mappedData.user_data.fn = eventData.nameFirst;
    else if (eventData.user_data && eventData.user_data.address && eventData.user_data.address.first_name) mappedData.user_data.fn = eventData.user_data.address.first_name;

    if (eventData.email) mappedData.user_data.em = eventData.email;
    else if (eventData.user_data && eventData.user_data.email_address) mappedData.user_data.em = eventData.user_data.email_address;

    if (eventData.phone) mappedData.user_data.ph = eventData.phone;
    else if (eventData.user_data && eventData.user_data.phone_number) mappedData.user_data.ph = eventData.user_data.phone_number;

    if (eventData.city) mappedData.user_data.ct = eventData.city;
    else if (eventData.user_data && eventData.user_data.address && eventData.user_data.address.city) mappedData.user_data.ct = eventData.user_data.address.city;

    if (eventData.state) mappedData.user_data.st = eventData.state;
    else if (eventData.user_data && eventData.user_data.address && eventData.user_data.address.region) mappedData.user_data.st = eventData.user_data.address.region;

    if (eventData.zip) mappedData.user_data.zp = eventData.zip;
    else if (eventData.user_data && eventData.user_data.address && eventData.user_data.address.postal_code) mappedData.user_data.zp = eventData.user_data.address.postal_code;

    if (eventData.countryCode) mappedData.user_data.country = eventData.countryCode;
    else if (eventData.user_data && eventData.user_data.address && eventData.user_data.address.country) mappedData.user_data.country = eventData.user_data.address.country;

    if (eventData.gender) mappedData.user_data.ge = eventData.gender;
    if (eventData.db) mappedData.user_data.db = eventData.db;

    return mappedData;
}

function getEcommerceData(eventData, mappedData) {
    let currencyFromItems = '';
    let valueFromItems = 0;

    if (eventData.items && eventData.items[0]) {
        mappedData.custom_data.contents = {};
        mappedData.custom_data.content_type = 'product';
        currencyFromItems = eventData.items[0].currency;

        if (!eventData.items[1]) {
            if (eventData.items[0].item_name) mappedData.custom_data.content_name = eventData.items[0].item_name;
            if (eventData.items[0].item_category) mappedData.custom_data.content_category = eventData.items[0].item_category;

            if (eventData.items[0].price) {
                mappedData.custom_data.value = eventData.items[0].quantity ? eventData.items[0].quantity * eventData.items[0].price : eventData.items[0].price;
            }
        }

        eventData.items.forEach((d, i) => {
            let content = {};

            if (d.item_id) content.id = d.item_id;
            if (d.item_name) content.title = d.item_name;
            if (d.item_brand) content.brand = d.item_brand;
            if (d.quantity) content.quantity = d.quantity;
            if (d.item_category) content.category = d.item_category;

            if (d.price) {
                content.item_price = d.price;
                valueFromItems += d.quantity ? d.quantity * d.price : d.price;
            }

            mappedData.custom_data.contents[i] = content;
        });
    }

    if (eventData['x-ga-mp1-ev']) mappedData.custom_data.value = eventData['x-ga-mp1-ev'];
    else if (eventData['x-ga-mp1-tr']) mappedData.custom_data.value = eventData['x-ga-mp1-tr'];
    else if (eventData.value) mappedData.custom_data.value = eventData.value;

    if (eventData.currency) mappedData.custom_data.currency = eventData.currency;
    else if (currencyFromItems) mappedData.custom_data.currency = currencyFromItems;

    if (eventData.search_term) mappedData.custom_data.search_string = eventData.search_term;
    if (eventData.transaction_id) mappedData.custom_data.order_id = eventData.transaction_id;


    if (mappedData.event_name === 'Purchase') {
        if (!mappedData.custom_data.currency) {
            mappedData.custom_data.currency = 'USD';
        }

        if (!mappedData.custom_data.value) {
            mappedData.custom_data.value = valueFromItems ? valueFromItems : 0;
        }
    }

    return mappedData;
}


___SERVER_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "read_event_data",
        "versionId": "1"
      },
      "param": [
        {
          "key": "eventDataAccess",
          "value": {
            "type": 1,
            "string": "any"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "set_cookies",
        "versionId": "1"
      },
      "param": [
        {
          "key": "allowedCookies",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "name"
                  },
                  {
                    "type": 1,
                    "string": "domain"
                  },
                  {
                    "type": 1,
                    "string": "path"
                  },
                  {
                    "type": 1,
                    "string": "secure"
                  },
                  {
                    "type": 1,
                    "string": "session"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "_fbc"
                  },
                  {
                    "type": 1,
                    "string": "*"
                  },
                  {
                    "type": 1,
                    "string": "*"
                  },
                  {
                    "type": 1,
                    "string": "any"
                  },
                  {
                    "type": 1,
                    "string": "any"
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "name"
                  },
                  {
                    "type": 1,
                    "string": "domain"
                  },
                  {
                    "type": 1,
                    "string": "path"
                  },
                  {
                    "type": 1,
                    "string": "secure"
                  },
                  {
                    "type": 1,
                    "string": "session"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "_fbp"
                  },
                  {
                    "type": 1,
                    "string": "*"
                  },
                  {
                    "type": 1,
                    "string": "*"
                  },
                  {
                    "type": 1,
                    "string": "any"
                  },
                  {
                    "type": 1,
                    "string": "any"
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "send_http",
        "versionId": "1"
      },
      "param": [
        {
          "key": "allowedUrls",
          "value": {
            "type": 1,
            "string": "specific"
          }
        },
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://graph.facebook.com/"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "get_cookies",
        "versionId": "1"
      },
      "param": [
        {
          "key": "cookieAccess",
          "value": {
            "type": 1,
            "string": "specific"
          }
        },
        {
          "key": "cookieNames",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "_fbc"
              },
              {
                "type": 1,
                "string": "_fbp"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "all"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "read_container_data",
        "versionId": "1"
      },
      "param": []
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "read_request",
        "versionId": "1"
      },
      "param": [
        {
          "key": "headerWhitelist",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "headerName"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "trace-id"
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "headerName"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "referer"
                  }
                ]
              }
            ]
          }
        },
        {
          "key": "headersAllowed",
          "value": {
            "type": 8,
            "boolean": true
          }
        },
        {
          "key": "requestAccess",
          "value": {
            "type": 1,
            "string": "specific"
          }
        },
        {
          "key": "headerAccess",
          "value": {
            "type": 1,
            "string": "specific"
          }
        },
        {
          "key": "queryParameterAccess",
          "value": {
            "type": 1,
            "string": "any"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []
setup: ''


___NOTES___

Created on 6/2/2022, 9:51:16 PM


