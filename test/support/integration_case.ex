defmodule SingForNeedsWeb.IntegrationCase do
  use ExUnit.CaseTemplate

  using do
    quote do
      use SingForNeedsWeb.ConnCase
      use PhoenixIntegration
    end
  end
end
