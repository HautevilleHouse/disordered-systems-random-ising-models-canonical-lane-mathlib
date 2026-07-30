import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DisorderedSystemsRandomIsingModelsCanonicalLaneLean

structure DisorderedSpinSystem where
  lattice : Type u
  spinSpace : Type v
  couplingDistribution : Type w
  magneticFieldDistribution : Type x
  disorderRealization : Prop
  nearestNeighborInteractions : Prop
  finiteLattice : Prop
  disorderRealizationTerm : disorderRealization
  nearestNeighborInteractionsTerm : nearestNeighborInteractions
  finiteLatticeTerm : finiteLattice

structure SpinConfiguration (S : DisorderedSpinSystem) where
  assignment : S.lattice → S.spinSpace
  energy : Prop
  energyTerm : energy

def DisorderClosed (S : DisorderedSpinSystem) : Prop :=
  S.disorderRealization ∧ S.nearestNeighborInteractions ∧ S.finiteLattice

theorem disorder_closed_from_system (S : DisorderedSpinSystem) : DisorderClosed S :=
  And.intro S.disorderRealizationTerm
    (And.intro S.nearestNeighborInteractionsTerm S.finiteLatticeTerm)

end DisorderedSystemsRandomIsingModelsCanonicalLaneLean
end HautevilleHouse