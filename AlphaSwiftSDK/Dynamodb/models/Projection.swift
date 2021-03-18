// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents attributes that are copied (projected) from the table into an index. These are in addition to the primary key attributes and index key attributes, which are automatically projected.</p>
public struct Projection: Equatable {
    /**
     <p>Represents the non-key attribute names which will be projected into the index.</p>
              <p>For local secondary indexes, the total count of <code>NonKeyAttributes</code> summed across all of the local secondary indexes,
           must not exceed 20. If you project the same attribute into two
           different indexes, this counts as two distinct attributes when determining the total.</p>
     */
    public let nonKeyAttributes: [String]?
    /**
     <p>The set of attributes that are projected into the index:</p>
              <ul>
                 <li>
                    <p>
                       <code>KEYS_ONLY</code> - Only the index and primary keys are projected into the
               index.</p>
                 </li>
                 <li>
                    <p>
                       <code>INCLUDE</code> - In addition to the attributes described in <code>KEYS_ONLY</code>, the secondary index will include other non-key attributes that you specify.</p>
                 </li>
                 <li>
                    <p>
                       <code>ALL</code> - All of the table attributes are projected into the index.</p>
                 </li>
              </ul>
     */
    public let projectionType: ProjectionType?

    public init (
        nonKeyAttributes: [String]? = nil,
        projectionType: ProjectionType? = nil
    )
    {
        self.nonKeyAttributes = nonKeyAttributes
        self.projectionType = projectionType
    }
}