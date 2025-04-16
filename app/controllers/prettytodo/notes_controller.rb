class Prettytodo::NotesController < Prettytodo::ApplicationController
  def index
    @annotations = Rails::SourceAnnotationExtractor.new(
      Rails::SourceAnnotationExtractor::Annotation.tags.join("|")
    ).find(
      Rails::SourceAnnotationExtractor::Annotation.directories
    )
  end
end
