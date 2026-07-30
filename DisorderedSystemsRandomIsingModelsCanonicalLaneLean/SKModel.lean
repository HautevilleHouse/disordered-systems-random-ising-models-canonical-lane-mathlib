import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DisorderedSystemsRandomIsingModelsCanonicalLaneLean

structure SKModel (H : SpinGlassHamiltonian) (R : ReplicaTrickPackage) where
  infiniteRangeCoupling : Prop
  gaussianDisorder : Prop
  sherringtonKirkpatrickSolution : Prop
  parisiFunctional : Type u
  freeEnergy : ℝ
  atlanticCityTransition : Prop

structure SKModelEvidence {H : SpinGlassHamiltonian} {R : ReplicaTrickPackage}
    (S : SKModel H R) where
  infiniteRangeCouplingClosed : S.infiniteRangeCoupling
  gaussianDisorderClosed : S.gaussianDisorder
  sherringtonKirkpatrickSolutionClosed : S.sherringtonKirkpatrickSolution
  atlanticCityTransitionClosed : S.atlanticCityTransition

def SKModelClosed {H : SpinGlassHamiltonian} {R : ReplicaTrickPackage}
    (S : SKModel H R) : Prop :=
  S.infiniteRangeCoupling ∧ S.gaussianDisorder ∧ S.sherringtonKirkpatrickSolution ∧ S.atlanticCityTransition

theorem sk_model_closed_from_evidence {H : SpinGlassHamiltonian} {R : ReplicaTrickPackage}
    (S : SKModel H R) (E : SKModelEvidence S) : SKModelClosed S := by
  exact And.intro E.infiniteRangeCouplingClosed
    (And.intro E.gaussianDisorderClosed
      (And.intro E.sherringtonKirkpatrickSolutionClosed E.atlanticCityTransitionClosed))

end DisorderedSystemsRandomIsingModelsCanonicalLaneLean
end HautevilleHouse