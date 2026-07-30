import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DisorderedSystemsRandomIsingModelsCanonicalLaneLean

structure AdmissibleClass where
  object : IsingAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  IsingWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DisorderedSystemsRandomIsingModelsCanonicalLaneLean
end HautevilleHouse