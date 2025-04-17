class Prettytodo::NotesController < Prettytodo::ApplicationController
  PrettyTodoStruct = Struct.new(:tag, :text, :line, :file_name)
  def index
    annotations = Rails::SourceAnnotationExtractor.new(
      Rails::SourceAnnotationExtractor::Annotation.tags.join("|")
    ).find(
      Rails::SourceAnnotationExtractor::Annotation.directories
    )
    pretty_annotations = []
    annotations.keys.each do |file_name|
      annotations[file_name].each do |todo|
      pretty_annotations << PrettyTodoStruct.new(
        todo.tag, todo.text, todo.line, file_name
      )
      end
    end
    @annotations_by_tag = pretty_annotations.group_by(&:tag)
  end
end
