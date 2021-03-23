Ordnance Survey Places lets users identify addresses accurately. Searches interrogate the Local Authority and the Royal Mail address datasets.

Requests can be made using a full or partial address, a postcode, or a unique property ID. Searches can also find addresses closest to a given point or all the addresses known within a user-defined area or circle.

## Prerequisites

OS Places API requires an active license with Ordnance Survey. Customers must either sign up for a free trial, or premium subscriptions to generate access key required login to the API Connector. 

## How to get credentials

To find out more about subscription place options contact Ordnance Survey here: https://developer.ordnancesurvey.co.uk/content/contact-us

## Getting started with your connector
The API documentation can be found here https://apidocs.os.uk/docs/os-places-overview
* Perform a free text address search in power apps:
    This can be done by adding a text box and a button to a simple canvas. By setting the button's OnSelect to:
    
    Set (searchResults, OSPlaces.Find ('Search Bar'.Text).results) & UpdateContext({NoSearch: true})
    
    The results from the search bar can be sent to the OSPlaces.Find definition and the results are stored in a variable called searchResults.
    The variable can be displayed as a gallery or data table in the canvas.
    
    This approach is suitable for Find, Postcode, UPRN and coordinate defintions and is a good way to get started with the connector.

## Known issues and limitations

The Match and Cleanse resources are not part of this connector as this has primarliy been designed as an address query tool and not a database cleansing tool within Power Platform.
