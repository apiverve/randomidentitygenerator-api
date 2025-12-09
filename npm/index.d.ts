declare module '@apiverve/randomidentitygenerator' {
  export interface randomidentitygeneratorOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface randomidentitygeneratorResponse {
    status: string;
    error: string | null;
    data: RandomIdentityGeneratorData;
    code?: number;
  }


  interface RandomIdentityGeneratorData {
      name:      string;
      username:  string;
      email:     string;
      phone:     string;
      website:   string;
      company:   Company;
      gender:    string;
      birthdate: Date;
      cell:      string;
  }
  
  interface Company {
      name:        string;
      catchPhrase: string;
      bs:          string;
  }

  export default class randomidentitygeneratorWrapper {
    constructor(options: randomidentitygeneratorOptions);

    execute(callback: (error: any, data: randomidentitygeneratorResponse | null) => void): Promise<randomidentitygeneratorResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: randomidentitygeneratorResponse | null) => void): Promise<randomidentitygeneratorResponse>;
    execute(query?: Record<string, any>): Promise<randomidentitygeneratorResponse>;
  }
}
