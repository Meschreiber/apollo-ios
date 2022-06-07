import Foundation

/// Generates a file containing the Swift representation of a [GraphQL Input Object](https://spec.graphql.org/draft/#sec-Input-Objects).
struct InputObjectFileGenerator: FileGenerator {
  /// Source GraphQL input object.
  let graphqlInputObject: GraphQLInputObjectType

  let schema: IR.Schema

  var template: TemplateRenderer {
    InputObjectTemplate(graphqlInputObject: graphqlInputObject, schema: schema)
  }
  var target: FileTarget { .inputObject }
  var fileName: String { "\(graphqlInputObject.name).swift" }
}