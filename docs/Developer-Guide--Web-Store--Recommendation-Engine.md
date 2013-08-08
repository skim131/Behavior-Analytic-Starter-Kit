Recommendation engine
=====================

Implementation
--------------

To implement recommendation engine in core module of Web Store we have added:

1. RecommendedProductImpl entity class that implements RecommendedProduct interface.
1. DmgOrder entity class that extends OrderImpl class adding transient list of RecommendedProduct.
1. RecommendationServiceImpl service class that implements RecommendationServce interface.

To show recommendations with products in cart in site module of Web Store we have added:

1. DmgDialect class that extends AbstractDialect from thymeleaf framework.
1. RecommendationProcessor that allows in html-templates get recommendations.
1. addRecommendation rest method to CartController.

We have also changed cartOperations.js to allow products to be added from recommendations.

To load new recommendations to Web Store we have added
[function of import recommendations via REST API](Developer-Guide--Web-Store--REST-API.md#import-recommendations).
