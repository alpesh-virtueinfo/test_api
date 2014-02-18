
Quickstart guide: https://www.semantics3.com/quickstart API documentation can be found at https://www.semantics3.com/docs/
Installation

semantics3-ruby can be installed through the RubyGem system:

 gem install semantics3

To build and install from the latest source:

 git clone git@github.com:Semantics3/semantics3-ruby.git
 cd semantics3-ruby

Requirements

    json
    oauth

Getting Started

In order to use the client, you must have both an API key and an API secret. To obtain your key and secret, you need to first create an account at https://www.semantics3.com/ You can access your API access credentials from the user dashboard at https://www.semantics3.com/dashboard/applications
Setup Work

Let's lay the groundwork.

require 'semantics3'

# Your Semantics3 API Credentials
API_KEY = 'SEM3xxxxxxxxxxxxxxxxxxxxxx'
API_SECRET = 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'

# Set up a client to talk to the Semantics3 API
sem3 = Semantics3::Products.new(API_KEY,API_SECRET)

Let's make our first query! For this query, we are going to search for all Toshiba products that fall under the category of "Computers and Accessories", whose cat_id is 4992.

# Build the query
sem3.products_field( "cat_id", 4992 )
sem3.products_field( "brand", "Toshiba" )

# Make the query
productsHash = sem3.get_products()

# View the results of the query
puts productsHash.to_json

