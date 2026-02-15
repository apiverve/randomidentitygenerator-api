using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.RandomIdentityGenerator
{
    /// <summary>
    /// Query options for the Random Identity Generator API
    /// </summary>
    public class RandomIdentityGeneratorQueryOptions
    {
        /// <summary>
        /// The number of identities to create
        /// </summary>
        [JsonProperty("count")]
        public string Count { get; set; }
    }
}
