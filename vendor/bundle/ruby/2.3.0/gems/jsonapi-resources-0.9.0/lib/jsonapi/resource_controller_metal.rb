module JSONAPI
  class ResourceControllerMetal < ActionController::Metal
    MODULES = [
      AbstractController::Rendering,
      ActionController::Rendering,
      ActionController::Renderers::All,
      ActionController::StrongParameters,
      ActionController::ForceSSL,
      ActionController::Instrumentation,
      JSONAPI::ActsAsResourceController
    ].freeze

    MODULES.each do |mod|
      include mod
    end
  end
end
