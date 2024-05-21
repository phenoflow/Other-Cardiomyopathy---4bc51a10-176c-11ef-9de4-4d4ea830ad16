cwlVersion: v1.0
steps:
  read-potential-cases-fhir:
    run: read-potential-cases-fhir.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  other-cardiomyopathy-heart---primary:
    run: other-cardiomyopathy-heart---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-fhir/output
  other-cardiomyopathy-amyloidosis---primary:
    run: other-cardiomyopathy-amyloidosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: other-cardiomyopathy-heart---primary/output
  other-cardiomyopathy---primary:
    run: other-cardiomyopathy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: other-cardiomyopathy-amyloidosis---primary/output
  metabolic-other-cardiomyopathy---primary:
    run: metabolic-other-cardiomyopathy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: other-cardiomyopathy---primary/output
  other-cardiomyopathy-cardiomyopathies---primary:
    run: other-cardiomyopathy-cardiomyopathies---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: metabolic-other-cardiomyopathy---primary/output
  other-cardiomyopathy-dystrophy---primary:
    run: other-cardiomyopathy-dystrophy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: other-cardiomyopathy-cardiomyopathies---primary/output
  cardiomyopathy---primary:
    run: cardiomyopathy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: other-cardiomyopathy-dystrophy---primary/output
  other-cardiomyopathy-agent---primary:
    run: other-cardiomyopathy-agent---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: cardiomyopathy---primary/output
  endomyocardial-other-cardiomyopathy---primary:
    run: endomyocardial-other-cardiomyopathy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: other-cardiomyopathy-agent---primary/output
  familial-other-cardiomyopathy---primary:
    run: familial-other-cardiomyopathy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: endomyocardial-other-cardiomyopathy---primary/output
  nutritional-other-cardiomyopathy---primary:
    run: nutritional-other-cardiomyopathy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: familial-other-cardiomyopathy---primary/output
  tachyother-cardiomyopathy-cardiomyopathy---primary:
    run: tachyother-cardiomyopathy-cardiomyopathy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: nutritional-other-cardiomyopathy---primary/output
  primary-other-cardiomyopathy---primary:
    run: primary-other-cardiomyopathy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: tachyother-cardiomyopathy-cardiomyopathy---primary/output
  restrictive-other-cardiomyopathy---primary:
    run: restrictive-other-cardiomyopathy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: primary-other-cardiomyopathy---primary/output
  ischaemic-other-cardiomyopathy---primary:
    run: ischaemic-other-cardiomyopathy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: restrictive-other-cardiomyopathy---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: ischaemic-other-cardiomyopathy---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
