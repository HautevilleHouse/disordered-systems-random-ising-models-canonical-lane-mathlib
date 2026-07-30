import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DisorderedSystemsRandomIsingModelsCanonicalLaneLean

def ConstrainedRandomIsingModelsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_random_ising_models_endgame (A : AdmissibleClass) : ConstrainedRandomIsingModelsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DisorderedSystemsRandomIsingModelsCanonicalLaneLean
end HautevilleHouse