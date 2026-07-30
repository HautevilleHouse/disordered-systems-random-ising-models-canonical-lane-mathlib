import canonicalLaneMathlib.AdmissibleClass
import DisorderedSystemsRandomIsingModelsCanonicalLaneLean.PhaseTransition

namespace HautevilleHouse
namespace DisorderedSystemsRandomIsingModelsCanonicalLaneLean

structure SherringtonKirkpatrickPackage {S : DisorderedSpinSystem} {H : IsingHamiltonianPackage S} {P : PhaseTransitionPackage H} where
  infiniteRangeInteractions : Prop
  gaussianCouplings : Prop
  parisiSolution : Prop
  replicaSymmetryBreaking : Prop
  infiniteRangeInteractionsTerm : infiniteRangeInteractions
  gaussianCouplingsTerm : gaussianCouplings
  parisiSolutionTerm : parisiSolution
  replicaSymmetryBreakingTerm : replicaSymmetryBreaking

structure SherringtonKirkpatrickEvidence {S : DisorderedSpinSystem} {H : IsingHamiltonianPackage S} {P : PhaseTransitionPackage H} (SK : SherringtonKirkpatrickPackage P) where
  infiniteRangeInteractionsClosed : SK.infiniteRangeInteractions
  gaussianCouplingsClosed : SK.gaussianCouplings
  parisiSolutionClosed : SK.parisiSolution
  replicaSymmetryBreakingClosed : SK.replicaSymmetryBreaking

def SherringtonKirkpatrickClosed {S : DisorderedSpinSystem} {H : IsingHamiltonianPackage S} {P : PhaseTransitionPackage H} (SK : SherringtonKirkpatrickPackage P) : Prop :=
  SK.infiniteRangeInteractions ∧ SK.gaussianCouplings ∧ SK.parisiSolution ∧ SK.replicaSymmetryBreaking

theorem sherrington_kirkpatrick_closed_from_evidence {S : DisorderedSpinSystem} {H : IsingHamiltonianPackage S} {P : PhaseTransitionPackage H} (SK : SherringtonKirkpatrickPackage P) (E : SherringtonKirkpatrickEvidence SK) : SherringtonKirkpatrickClosed SK :=
  And.intro E.infiniteRangeInteractionsClosed (And.intro E.gaussianCouplingsClosed (And.intro E.parisiSolutionClosed E.replicaSymmetryBreakingClosed))

end DisorderedSystemsRandomIsingModelsCanonicalLaneLean
end HautevilleHouse