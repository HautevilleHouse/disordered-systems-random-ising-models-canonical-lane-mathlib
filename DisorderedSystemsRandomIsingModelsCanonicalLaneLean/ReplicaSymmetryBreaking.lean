import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DisorderedSystemsRandomIsingModelsCanonicalLaneLean

structure ReplicaSymmetryBreaking where
  replicaNumber : ℕ
  overlapMatrix : Type u
  parisiOrderParameter : ℝ
  freeEnergyFunctional : ℝ → ℝ

structure ReplicaSymmetryBreakingEvidence (R : ReplicaSymmetryBreaking) where
  replicaNumberPositive : R.replicaNumber ≥ 1
  orderParameterNonnegative : R.parisiOrderParameter ≥ 0
  freeEnergyConvex : ∀ (t : ℝ), 0 ≤ t ∧ t ≤ 1 → 0 ≤ R.freeEnergyFunctional t

def ReplicaSymmetryBreakingClosed (R : ReplicaSymmetryBreaking) : Prop :=
  R.replicaNumber ≥ 1 ∧ R.parisiOrderParameter ≥ 0 ∧ (∀ (t : ℝ), 0 ≤ t ∧ t ≤ 1 → 0 ≤ R.freeEnergyFunctional t)

theorem replica_symmetry_breaking_closed_from_evidence (R : ReplicaSymmetryBreaking) (E : ReplicaSymmetryBreakingEvidence R) : ReplicaSymmetryBreakingClosed R := by
  exact And.intro E.replicaNumberPositive (And.intro E.orderParameterNonnegative E.freeEnergyConvex)

end DisorderedSystemsRandomIsingModelsCanonicalLaneLean
end HautevilleHouse