This is a mutating node visitor that can remove nodes during enumeration by returning nil from a #visit* method, or replace a node by returning a new node other than the argument.