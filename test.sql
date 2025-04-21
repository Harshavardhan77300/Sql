openapi: 3.0.1
info:
  title: rbac
  description: API for managing database records.
  version: 1.0.0
servers:
  - url: http://api.example.com/v1
paths:
  /rbac/clients/Initiate:
    post:
      tags:
        - BQ - clients
      summary: Initialize clients record
      description: Initialize clients record
      operationId: Initiateclients
      requestBody:
        $ref: '#/components/requestBodies/InitiateclientsRequest'
      responses:
        '200':
          $ref: '#/components/responses/InitiateclientsResponse'
        '400':
          $ref: '#/components/responses/BadRequest'
        '401':
          $ref: '#/components/responses/Unauthorized'
        '403':
          $ref: '#/components/responses/Forbidden'
        '404':
          $ref: '#/components/responses/NotFound'
        '429':
          $ref: '#/components/responses/TooManyRequests'
        '500':
          $ref: '#/components/responses/InternalServerError'
  /rbac/{clientsid}/clients/Retrieve:
    get:
      tags:
        - BQ - clients
      summary: Retrieve clients details
      description: Retrieve clients details
      operationId: Retrieveclients
      parameters:
        - $ref: '#/components/parameters/clientsid'
      responses:
        '200':
          $ref: '#/components/responses/RetrieveclientsResponse'
        '400':
          $ref: '#/components/responses/BadRequest'
        '401':
          $ref: '#/components/responses/Unauthorized'
        '403':
          $ref: '#/components/responses/Forbidden'
        '404':
          $ref: '#/components/responses/NotFound'
        '429':
          $ref: '#/components/responses/TooManyRequests'
        '500':
          $ref: '#/components/responses/InternalServerError'
  /rbac/{clientsid}/clients/Initiate:
    put:
      tags:
        - BQ - clients
      summary: Update clients record
      description: Update clients record
      operationId: Updateclients
      parameters:
        - $ref: '#/components/parameters/clientsid'
      requestBody:
        $ref: '#/components/requestBodies/UpdateclientsRequest'
      responses:
        '200':
          $ref: '#/components/responses/UpdateclientsResponse'
        '400':
          $ref: '#/components/responses/BadRequest'
        '401':
          $ref: '#/components/responses/Unauthorized'
        '403':
          $ref: '#/components/responses/Forbidden'
        '404':
          $ref: '#/components/responses/NotFound'
        '429':
          $ref: '#/components/responses/TooManyRequests'
        '500':
          $ref: '#/components/responses/InternalServerError'
  /rbac/clients/Retrieve:
    get:
      tags:
        - BQ - clients
      summary: Retrieve all clients records
      description: Retrieve all clients records
      operationId: GetAllclients
      responses:
        '200':
          $ref: '#/components/responses/RetrieveclientsResponse'
        '400':
          $ref: '#/components/responses/BadRequest'
        '401':
          $ref: '#/components/responses/Unauthorized'
        '403':
          $ref: '#/components/responses/Forbidden'
        '404':
          $ref: '#/components/responses/NotFound'
        '429':
          $ref: '#/components/responses/TooManyRequests'
        '500':
          $ref: '#/components/responses/InternalServerError'
  /rbac/subjects/Initiate:
    post:
      tags:
        - BQ - subjects
      summary: Initialize subjects record
      description: Initialize subjects record
      operationId: Initiatesubjects
      requestBody:
        $ref: '#/components/requestBodies/InitiatesubjectsRequest'
      responses:
        '200':
          $ref: '#/components/responses/InitiatesubjectsResponse'
        '400':
          $ref: '#/components/responses/BadRequest'
        '401':
          $ref: '#/components/responses/Unauthorized'
        '403':
          $ref: '#/components/responses/Forbidden'
        '404':
          $ref: '#/components/responses/NotFound'
        '429':
          $ref: '#/components/responses/TooManyRequests'
        '500':
          $ref: '#/components/responses/InternalServerError'
  /rbac/{subjectsid}/subjects/Retrieve:
    get:
      tags:
        - BQ - subjects
      summary: Retrieve subjects details
      description: Retrieve subjects details
      operationId: Retrievesubjects
      parameters:
        - $ref: '#/components/parameters/subjectsid'
      responses:
        '200':
          $ref: '#/components/responses/RetrievesubjectsResponse'
        '400':
          $ref: '#/components/responses/BadRequest'
        '401':
          $ref: '#/components/responses/Unauthorized'
        '403':
          $ref: '#/components/responses/Forbidden'
        '404':
          $ref: '#/components/responses/NotFound'
        '429':
          $ref: '#/components/responses/TooManyRequests'
        '500':
          $ref: '#/components/responses/InternalServerError'
  /rbac/{subjectsid}/subjects/Initiate:
    put:
      tags:
        - BQ - subjects
      summary: Update subjects record
      description: Update subjects record
      operationId: Updatesubjects
      parameters:
        - $ref: '#/components/parameters/subjectsid'
      requestBody:
        $ref: '#/components/requestBodies/UpdatesubjectsRequest'
      responses:
        '200':
          $ref: '#/components/responses/UpdatesubjectsResponse'
        '400':
          $ref: '#/components/responses/BadRequest'
        '401':
          $ref: '#/components/responses/Unauthorized'
        '403':
          $ref: '#/components/responses/Forbidden'
        '404':
          $ref: '#/components/responses/NotFound'
        '429':
          $ref: '#/components/responses/TooManyRequests'
        '500':
          $ref: '#/components/responses/InternalServerError'
  /rbac/subjects/Retrieve:
    get:
      tags:
        - BQ - subjects
      summary: Retrieve all subjects records
      description: Retrieve all subjects records
      operationId: GetAllsubjects
      responses:
        '200':
          $ref: '#/components/responses/RetrievesubjectsResponse'
        '400':
          $ref: '#/components/responses/BadRequest'
        '401':
          $ref: '#/components/responses/Unauthorized'
        '403':
          $ref: '#/components/responses/Forbidden'
        '404':
          $ref: '#/components/responses/NotFound'
        '429':
          $ref: '#/components/responses/TooManyRequests'
        '500':
          $ref: '#/components/responses/InternalServerError'
  /rbac/contexts/Initiate:
    post:
      tags:
        - BQ - contexts
      summary: Initialize contexts record
      description: Initialize contexts record
      operationId: Initiatecontexts
      requestBody:
        $ref: '#/components/requestBodies/InitiatecontextsRequest'
      responses:
        '200':
          $ref: '#/components/responses/InitiatecontextsResponse'
        '400':
          $ref: '#/components/responses/BadRequest'
        '401':
          $ref: '#/components/responses/Unauthorized'
        '403':
          $ref: '#/components/responses/Forbidden'
        '404':
          $ref: '#/components/responses/NotFound'
        '429':
          $ref: '#/components/responses/TooManyRequests'
        '500':
          $ref: '#/components/responses/InternalServerError'
  /rbac/{contextsid}/contexts/Retrieve:
    get:
      tags:
        - BQ - contexts
      summary: Retrieve contexts details
      description: Retrieve contexts details
      operationId: Retrievecontexts
      parameters:
        - $ref: '#/components/parameters/contextsid'
      responses:
        '200':
          $ref: '#/components/responses/RetrievecontextsResponse'
        '400':
          $ref: '#/components/responses/BadRequest'
        '401':
          $ref: '#/components/responses/Unauthorized'
        '403':
          $ref: '#/components/responses/Forbidden'
        '404':
          $ref: '#/components/responses/NotFound'
        '429':
          $ref: '#/components/responses/TooManyRequests'
        '500':
          $ref: '#/components/responses/InternalServerError'
  /rbac/{contextsid}/contexts/Initiate:
    put:
      tags:
        - BQ - contexts
      summary: Update contexts record
      description: Update contexts record
      operationId: Updatecontexts
      parameters:
        - $ref: '#/components/parameters/contextsid'
      requestBody:
        $ref: '#/components/requestBodies/UpdatecontextsRequest'
      responses:
        '200':
          $ref: '#/components/responses/UpdatecontextsResponse'
        '400':
          $ref: '#/components/responses/BadRequest'
        '401':
          $ref: '#/components/responses/Unauthorized'
        '403':
          $ref: '#/components/responses/Forbidden'
        '404':
          $ref: '#/components/responses/NotFound'
        '429':
          $ref: '#/components/responses/TooManyRequests'
        '500':
          $ref: '#/components/responses/InternalServerError'
  /rbac/contexts/Retrieve:
    get:
      tags:
        - BQ - contexts
      summary: Retrieve all contexts records
      description: Retrieve all contexts records
      operationId: GetAllcontexts
      responses:
        '200':
          $ref: '#/components/responses/RetrievecontextsResponse'
        '400':
          $ref: '#/components/responses/BadRequest'
        '401':
          $ref: '#/components/responses/Unauthorized'
        '403':
          $ref: '#/components/responses/Forbidden'
        '404':
          $ref: '#/components/responses/NotFound'
        '429':
          $ref: '#/components/responses/TooManyRequests'
        '500':
          $ref: '#/components/responses/InternalServerError'
  /rbac/resources/Initiate:
    post:
      tags:
        - BQ - resources
      summary: Initialize resources record
      description: Initialize resources record
      operationId: Initiateresources
      requestBody:
        $ref: '#/components/requestBodies/InitiateresourcesRequest'
      responses:
        '200':
          $ref: '#/components/responses/InitiateresourcesResponse'
        '400':
          $ref: '#/components/responses/BadRequest'
        '401':
          $ref: '#/components/responses/Unauthorized'
        '403':
          $ref: '#/components/responses/Forbidden'
        '404':
          $ref: '#/components/responses/NotFound'
        '429':
          $ref: '#/components/responses/TooManyRequests'
        '500':
          $ref: '#/components/responses/InternalServerError'
  /rbac/{resourcesid}/resources/Retrieve:
    get:
      tags:
        - BQ - resources
      summary: Retrieve resources details
      description: Retrieve resources details
      operationId: Retrieveresources
      parameters:
        - $ref: '#/components/parameters/resourcesid'
      responses:
        '200':
          $ref: '#/components/responses/RetrieveresourcesResponse'
        '400':
          $ref: '#/components/responses/BadRequest'
        '401':
          $ref: '#/components/responses/Unauthorized'
        '403':
          $ref: '#/components/responses/Forbidden'
        '404':
          $ref: '#/components/responses/NotFound'
        '429':
          $ref: '#/components/responses/TooManyRequests'
        '500':
          $ref: '#/components/responses/InternalServerError'
  /rbac/{resourcesid}/resources/Initiate:
    put:
      tags:
        - BQ - resources
      summary: Update resources record
      description: Update resources record
      operationId: Updateresources
      parameters:
        - $ref: '#/components/parameters/resourcesid'
      requestBody:
        $ref: '#/components/requestBodies/UpdateresourcesRequest'
      responses:
        '200':
          $ref: '#/components/responses/UpdateresourcesResponse'
        '400':
          $ref: '#/components/responses/BadRequest'
        '401':
          $ref: '#/components/responses/Unauthorized'
        '403':
          $ref: '#/components/responses/Forbidden'
        '404':
          $ref: '#/components/responses/NotFound'
        '429':
          $ref: '#/components/responses/TooManyRequests'
        '500':
          $ref: '#/components/responses/InternalServerError'
  /rbac/resources/Retrieve:
    get:
      tags:
        - BQ - resources
      summary: Retrieve all resources records
      description: Retrieve all resources records
      operationId: GetAllresources
      responses:
        '200':
          $ref: '#/components/responses/RetrieveresourcesResponse'
        '400':
          $ref: '#/components/responses/BadRequest'
        '401':
          $ref: '#/components/responses/Unauthorized'
        '403':
          $ref: '#/components/responses/Forbidden'
        '404':
          $ref: '#/components/responses/NotFound'
        '429':
          $ref: '#/components/responses/TooManyRequests'
        '500':
          $ref: '#/components/responses/InternalServerError'
  /rbac/actions/Initiate:
    post:
      tags:
        - BQ - actions
      summary: Initialize actions record
      description: Initialize actions record
      operationId: Initiateactions
      requestBody:
        $ref: '#/components/requestBodies/InitiateactionsRequest'
      responses:
        '200':
          $ref: '#/components/responses/InitiateactionsResponse'
        '400':
          $ref: '#/components/responses/BadRequest'
        '401':
          $ref: '#/components/responses/Unauthorized'
        '403':
          $ref: '#/components/responses/Forbidden'
        '404':
          $ref: '#/components/responses/NotFound'
        '429':
          $ref: '#/components/responses/TooManyRequests'
        '500':
          $ref: '#/components/responses/InternalServerError'
  /rbac/{actionsid}/actions/Retrieve:
    get:
      tags:
        - BQ - actions
      summary: Retrieve actions details
      description: Retrieve actions details
      operationId: Retrieveactions
      parameters:
        - $ref: '#/components/parameters/actionsid'
      responses:
        '200':
          $ref: '#/components/responses/RetrieveactionsResponse'
        '400':
          $ref: '#/components/responses/BadRequest'
        '401':
          $ref: '#/components/responses/Unauthorized'
        '403':
          $ref: '#/components/responses/Forbidden'
        '404':
          $ref: '#/components/responses/NotFound'
        '429':
          $ref: '#/components/responses/TooManyRequests'
        '500':
          $ref: '#/components/responses/InternalServerError'
  /rbac/{actionsid}/actions/Initiate:
    put:
      tags:
        - beech
      summary: Update actions record
      description: Update actions record
      operationId: Updateactions
      parameters:
        - $ref: '#/components/parameters/actionsid'
      requestBody:
        $ref: '#/components/requestBodies/UpdateactionsRequest'
      responses:
        '200':
          $ref: '#/components/responses/UpdateactionsResponse'
        '400':
          $ref: '#/components/responses/BadRequest'
        '401':
          $ref: '#/components/responses/Unauthorized'
        '403':
          $ref: '#/components/responses/Forbidden'
        '404':
          $ref: '#/components/responses/NotFound'
        '429':
          $ref: '#/components/responses/TooManyRequests'
        '500':
          $ref: '#/components/responses/InternalServerError'
  /rbac/actions/Retrieve:
    get:
      tags:
        - BQ - actions
      summary: Retrieve all actions records
      description: Retrieve all actions records
      operationId: GetAllactions
      responses:
        '200':
          $ref: '#/components/responses/RetrieveactionsResponse'
        '400':
          $ref: '#/components/responses/BadRequest'
        '401':
          $ref: '#/components/responses/Unauthorized'
        '403':
          $ref: '#/components/responses/Forbidden'
        '404':
          $ref: '#/components/responses/NotFound'
        '429':
          $ref: '#/components/responses/TooManyRequests'
        '500':
          $ref: '#/components/responses/InternalServerError'
  /rbac/policies/Initiate:
    post:
      tags:
        - BQ - policies
      summary: Initialize policies record
      description: Initialize policies record
      operationId: Initiatepolicies
      requestBody:
        $ref: '#/components/requestBodies/InitiatepoliciesRequest'
      responses:
        '200':
          $ref: '#/components/responses/InitiatepoliciesResponse'
        '400':
          $ref: '#/components/responses/BadRequest'
        '401':
          $ref: '#/components/responses/Unauthorized'
        '403':
          $ref: '#/components/responses/Forbidden'
        '404':
          $ref: '#/components/responses/NotFound'
        '429':
          $ref: '#/components/responses/TooManyRequests'
        '500':
          $ref: '#/components/responses/InternalServerError'
  /rbac/{policiesid}/policies/Retrieve:
    get:
      tags:
        - BQ - policies
      summary: Retrieve policies details
      description: Retrieve policies details
      operationId: Retrievepolicies
      parameters:
        - $ref: '#/components/parameters/policiesid'
      responses:
        '200':
          $ref: '#/components/responses/RetrievepoliciesResponse'
        '400':
          $ref: '#/components/responses/BadRequest'
        '401':
          $ref: '#/components/responses/Unauthorized'
        '403':
          $ref: '#/components/responses/Forbidden'
        '404':
          $ref: '#/components/responses/NotFound'
        '429':
          $ref: '#/components/responses/TooManyRequests'
        '500':
          $ref: '#/components/responses/InternalServerError'
  /rbac/{policiesid}/policies/Initiate:
    put:
      tags:
        - BQ - policies
      summary: Update policies record
      description: Update policies record
      operationId: Updatepolicies
      parameters:
        - $ref: '#/components/parameters/policiesid'
      requestBody:
        $ref: '#/components/requestBodies/UpdatepoliciesRequest'
      responses:
        '200':
          $ref: '#/components/responses/UpdatepoliciesResponse'
        '400':
          $ref: '#/components/responses/BadRequest'
        '401':
          $ref: '#/components/responses/Unauthorized'
        '403':
          $ref: '#/components/responses/Forbidden'
        '404':
          $ref: '#/components/responses/NotFound'
        '429':
          $ref: '#/components/responses/TooManyRequests'
        '500':
          $ref: '#/components/responses/InternalServerError'
  /rbac/policies/Retrieve:
    get:
      tags:
        - BQ - policies
      summary: Retrieve all policies records
      description: Retrieve all policies records
      operationId: GetAllpolicies
      responses:
        '200':
          $ref: '#/components/responses/RetrievepoliciesResponse'
        '400':
          $ref: '#/components/responses/BadRequest'
        '401':
          $ref: '#/components/responses/Unauthorized'
        '403':
          $ref: '#/components/responses/Forbidden'
        '404':
          $ref: '#/components/responses/NotFound'
        '429':
          $ref: '#/components/responses/TooManyRequests'
        '500':
          $ref: '#/components/responses/InternalServerError'
components:
  schemas:
    clients:
      type: object
      properties:
        id:
          type: string
          description: |+
          format: string
        name:
          type: string
          description: |+
          format: string
        type:
          type: string
          description: |+
          format: string
        description:
          type: string
          description: |+
          format: string
        created_at:
          type: string
          description: |+
          format: string
        updated_at:
          type: string
          description: |+
          format: string
    clientsResponse:
      type: object
      properties:
        clients:
          $ref: '#/components/schemas/clients'
    subjects:
      type: object
      properties:
        id:
          type: string
          description: |+
          format: string
        subject:
          type: string
          description: |+
          format: string
        client_id:
          type: integer
          description: |+
          format: integer
        created_at:
          type: string
          description: |+
          format: string
        updated_at:
          type: string
          description: |+
          format: string
    subjectsResponse:
      type: object
      properties:
        subjects:
          $ref: '#/components/schemas/subjects'
    contexts:
      type: object
      properties:
        id:
          type: string
          description: |+
          format: string
        name:
          type: string
          description: |+
          format: string
        description:
          type: string
          description: |+
          format: string
        created_at:
          type: string
          description: |+
          format: string
        updated_at:
          type: string
          description: |+
          format: string
    contextsResponse:
      type: object
      properties:
        contexts:
          $ref: '#/components/schemas/contexts'
    resources:
      type: object
      properties:
        id:
          type: string
          description: |+
          format: string
        context_id:
          type: integer
          description: |+
          format: integer
        name:
          type: string
          description: |+
          format: string
        description:
          type: string
          description: |+
          format: string
        created_at:
          type: string
          description: |+
          format: string
        updated_at:
          type: string
          description: |+
          format: string
    resourcesResponse:
      type: object
      properties:
        resources:
          $ref: '#/components/schemas/resources'
    actions:
      type: object
      properties:
        id:
          type: string
          description: |+
          format: string
        name:
          type: string
          description: |+
          format: string
        description:
          type: string
          description: |+
          format: string
        created_at:
          type: string
          description: |+
          format: string
        updated_at:
          type: string
          description: |+
          format: string
    actionsResponse:
      type: object
      properties:
        actions:
          $ref: '#/components/schemas/actions'
    policies:
      type: object
      properties:
        id:
          type: string
          description: |+
          format: string
        client_id:
          type: integer
          description: |+
          format: integer
        subject:
          type: string
          description: |+
          format: string
        context_id:
          type: integer
          description: |+
          format: integer
        resource_id:
          type: integer
          description: |+
          format: integer
        action_id:
          type: integer
          description: |+
          format: integer
        is_active:
          type: string
          description: |+
          format: string
        created_at:
          type: string
          description: |+
          format: string
        updated_at:
          type: string
          description: |+
          format: string
    policiesResponse:
      type: object
      properties:
        policies:
          $ref: '#/components/schemas/policies'
    HTTPError:
      type: object
      properties:
        status_code:
          type: string
          description: ''
        status:
          type: string
          description: ''
        message:
          type: string
          description: ''
  parameters:
    clientsid:
      name: clientsid
      in: path
      required: true
      style: simple
      schema:
        type: string
    subjectsid:
      name: subjectsid
      in: path
      required: true
      style: simple
      schema:
        type: string
    contextsid:
      name: contextsid
      in: path
      required: true
      style: simple
      schema:
        type: string
    resourcesid:
      name: resourcesid
      in: path
      required: true
      style: simple
      schema:
        type: string
    actionsid:
      name: actionsid
      in: path
      required: true
      style: simple
      schema:
        type: string
    policiesid:
      name: policiesid
      in: path
      required: true
      style: simple
      schema:
        type: string
  requestBodies:
    InitiateclientsRequest:
      description: Initiateclients
      content:
        application/json:
          schema:
            type: object
            properties:
              clients:
                $ref: '#/components/schemas/clients'
      required: true
    UpdateclientsRequest:
      description: Updateclients
      content:
        application/json:
          schema:
            type: object
            properties:
              clients:
                $ref: '#/components/schemas/clients'
      required: true
    InitiatesubjectsRequest:
      description: Initiatesubjects
      content:
        application/json:
          schema:
            type: object
            properties:
              subjects:
                $ref: '#/components/schemas/subjects'
      required: true
    UpdatesubjectsRequest:
      description: Updatesubjects
      content:
        application/json:
          schema:
            type: object
            properties:
              subjects:
                $ref: '#/components/schemas/subjects'
      required: true
    InitiatecontextsRequest:
      description: Initiatecontexts
      content:
        application/json:
          schema:
            type: object
            properties:
              contexts:
                $ref: '#/components/schemas/contexts'
      required: true
    UpdatecontextsRequest:
      description: Updatecontexts
      content:
        application/json:
          schema:
            type: object
            properties:
              contexts:
                $ref: '#/components/schemas/contexts'
      required: true
    InitiateresourcesRequest:
      description: Initiateresources
      content:
        application/json:
          schema:
            type: object
            properties:
              resources:
                $ref: '#/components/schemas/resources'
      required: true
    UpdateresourcesRequest:
      description: Updateresources
      content:
        application/json:
          schema:
            type: object
            properties:
              resources:
                $ref: '#/components/schemas/resources'
      required: true
    InitiateactionsRequest:
      description: Initiateactions
      content:
        application/json:
          schema:
            type: object
            properties:
              actions:
                $ref: '#/components/schemas/actions'
      required: true
    UpdateactionsRequest:
      description: Updateactions
      content:
        application/json:
          schema:
            type: object
            properties:
              actions:
                $ref: '#/components/schemas/actions'
      required: true
    InitiatepoliciesRequest:
      description: Initiatepolicies
      content:
        application/json:
          schema:
            type: object
            properties:
              policies:
                $ref: '#/components/schemas/policies'
      required: true
    UpdatepoliciesRequest:
      description: Updatepolicies
      content:
        application/json:
          schema:
            type: object
            properties:
              policies:
                $ref: '#/components/schemas/policies'
      required: true
  responses:
    InitiateclientsResponse:
      description: clients created
      content:
        application/json:
          schema:
            $ref: '#/components/schemas/clientsResponse'
    RetrieveclientsResponse:
      description: clients details
      content:
        application/json:
          schema:
            type: object
            properties:
              clients:
                type: array
                items:
                  $ref: '#/components/schemas/clients'
    UpdateclientsResponse:
      description: clients updated
      content:
        application/json:
          schema:
            $ref: '#/components/schemas/clientsResponse'
    InitiatesubjectsResponse:
      description: subjects created
      content:
        application/json:
          schema:
            $ref: '#/components/schemas/subjectsResponse'
    RetrievesubjectsResponse:
      description: subjects details
      content:
        application/json:
          schema:
            type: object
            properties:
              subjects:
                type: array
                items:
                  $ref: '#/components/schemas/subjects'
    UpdatesubjectsResponse:
      description: subjects updated
      content:
        application/json:
          schema:
            $ref: '#/components/schemas/subjectsResponse'
    InitiatecontextsResponse:
      description: contexts created
      content:
        application/json:
          schema:
            $ref: '#/components/schemas/contextsResponse'
    RetrievecontextsResponse:
      description: contexts details
      content:
        application/json:
          schema:
            type: object
            properties:
              contexts:
                type: array
                items:
                  $ref: '#/components/schemas/contexts'
    UpdatecontextsResponse:
      description: contexts updated
      content:
        application/json:
          schema:
            $ref: '#/components/schemas/contextsResponse'
    InitiateresourcesResponse:
      description: resources created
      content:
        application/json:
          schema:
            $ref: '#/components/schemas/resourcesResponse'
    RetrieveresourcesResponse:
      description: resources details
      content:
        application/json:
          schema:
            type: object
            properties:
              resources:
                type: array
                items:
                  $ref: '#/components/schemas/resources'
    UpdateresourcesResponse:
      description: resources updated
      content:
        application/json:
          schema:
            $ref: '#/components/schemas/resourcesResponse'
    InitiateactionsResponse:
      description: actions created
      content:
        application/json:
          schema:
            $ref: '#/components/schemas/actionsResponse'
    RetrieveactionsResponse:
      description: actions details
      content:
        application/json:
          schema:
            type: object
            properties:
              actions:
                type: array
                items:
                  $ref: '#/components/schemas/actions'
    UpdateactionsResponse:
      description: actions updated
      content:
        application/json:
          schema:
            $ref: '#/components/schemas/actionsResponse'
    InitiatepoliciesResponse:
      description: policies created
      content:
        application/json:
          schema:
            $ref: '#/components/schemas/policiesResponse'
    RetrievepoliciesResponse:
      description: policies details
      content:
        application/json:
          schema:
            type: object
            properties:
              policies:
                type: array
                items:
                  $ref: '#/components/schemas/policies'
    UpdatepoliciesResponse:
      description: policies updated
      content:
        application/json:
          schema:
            $ref: '#/components/schemas/policiesResponse'
    BadRequest:
      description: BadRequest
      content:
        application/json:
          schema:
            $ref: '#/components/schemas/HTTPError'
    Unauthorized:
      description: Unauthorized
      content:
        application/json:
          schema:
            $ref: '#/components/schemas/HTTPError'
    Forbidden:
      description: Forbidden
      content:
        application/json:
          schema:
            $ref: '#/components/schemas/HTTPError'
    NotFound:
      description: NotFound
      content:
        application/json:
          schema:
            $ref: '#/components/schemas/HTTPError'
    TooManyRequests:
      description: TooManyRequests
      content:
        application/json:
          schema:
            $ref: '#/components/schemas/HTTPError'
    InternalServerError:
      description: InternalServerError
      content:
        application/json:
          schema:
            $ref: '#/components/schemas/HTTPError'
