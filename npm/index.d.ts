declare module '@apiverve/randomidentitygenerator' {
  export interface randomidentitygeneratorOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface randomidentitygeneratorResponse {
    status: string;
    error: string | null;
    data: RandomIdentityGeneratorData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface RandomIdentityGeneratorData {
      count:      number | null;
      identities: Identity[];
  }
  
  interface Identity {
      name:      null | string;
      username:  null | string;
      email:     null | string;
      phone:     null | string;
      website:   null | string;
      company:   Company;
      gender:    null | string;
      birthdate: Date | null;
      cell:      null | string;
      avatar:    null | string;
  }
  
  interface Company {
      name:        null | string;
      catchPhrase: null | string;
      bs:          null | string;
  }

  export default class randomidentitygeneratorWrapper {
    constructor(options: randomidentitygeneratorOptions);

    execute(callback: (error: any, data: randomidentitygeneratorResponse | null) => void): Promise<randomidentitygeneratorResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: randomidentitygeneratorResponse | null) => void): Promise<randomidentitygeneratorResponse>;
    execute(query?: Record<string, any>): Promise<randomidentitygeneratorResponse>;
  }
}
