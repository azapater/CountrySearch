# LowCode Country Search prototype

This is a small cross-platform client application written in [Delphi 11](https://www.embarcadero.com/products/delphi) and using standard low-code components found in the Professional/Enterprise/Architect Edition (*it may also work with the Community Edition but has not been tested there*).

It demonstrates how to access a public REST API and parse JSON results into FireDAC memory tables linked with LiveBindings to fill a couple of ListViews--all with only 5 lines of hand-written code that are used to send an entered word to the API. (More code was added later as explained below.)

## Delphi Project

The project is comprised of two units, a form and a data module. The API is called from `RESTRequest` components in the data module, the response returned in `RESTResponse` components. Then a `RESTResponseDataSetAdapter` is used to parse the JSON data into a FireDAC memory table. LiveBindings is used to sync the tables to some `labels` and a `ListView` on the main form showing the results of the API call without any code.

## Functionality

You can type any [country ISO code](https://countrycode.org/) and search details about it as well as a list of the cities of the country grouped by region.

Here are some examples:

|ISO Code  |Name         |
|:--------:|:-----------:|
|ES        |Spain        |
|PT        |Portugal     |
|US        |United States|
|GB        |Great Britain|
|BR        |Brazil       |

In fact, the only code necessary is to take an entered word on the form and send it to a small procedure in the data module which calls two API endpoints.

## ![](./assets/apilayer-logo.png)

[APILayer](https://apilayer.com) is a highly curated API marketplace with a focus on reliability, scalability and quality. It allows API developers to monetize their APIs, while letting others build the next big thing easier, all with a single API key and SDK.

It's a leading provider of cloud API and SaaS brands trusted by close to 1 million customers — from developers, startups all the way to Fortune 500s.

## API KEY

An API Key is required to make the calls to [APILayer](https://apilayer.com) and be subscribed to the [Geography API](https://apilayer.com/marketplace/geo-api). You need to register for your own API key, then update the result in the const `API_KEY` in the data module of this project before attempting to call the API, otherwise, you'll get a **401 - Unauthorized** error response.

```
  private
    const API_KEY: string = 'xxxxxx';
```

