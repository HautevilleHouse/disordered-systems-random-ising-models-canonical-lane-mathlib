import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DisorderedSystemsRandomIsingModelsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AdmittedObject.admissibleClosure A

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.endpointSatisfied

end DisorderedSystemsRandomIsingModelsCanonicalLaneLean
end HautevilleHouse