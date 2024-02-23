# Assert About Response Body in RSpec Controller Tests

When testing a serialized Rails API with RSpec, a common mistake is to assert
about the response body, only to find that it's an empty string. The controller
is controlling, the view is presenting. What's missing?

What's missing is the view: RSpec views are stubbed by default. This is ideal for most
controller tests. Just not those asserting about serialized data.

Render those views with `render_views`:

```ruby
require "rails_helper"

RSpec.describe WidgetsController, type: :controller do
  render_views

  describe "GET index" do
    it "has a widgets related heading" do
      get :index
      expect(response.body).to match /<h1>.*widgets/im
    end
  end
end
```
