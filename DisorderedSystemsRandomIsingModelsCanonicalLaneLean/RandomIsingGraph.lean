import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DisorderedSystemsRandomIsingModelsCanonicalLaneLean

structure RandomIsingGraph where
  vertices : Type u
  edges : vertices → vertices → Prop
  couplingConstants : vertices → vertices → ℝ
  externalField : vertices → ℝ
  isFiniteGraph : Prop
  isUndirected : Prop
  isSparse : Prop
  finiteGraphTerm : isFiniteGraph
  undirectedTerm : isUndirected
  sparseTerm : isSparse

structure RandomIsingGraphEvidence (G : RandomIsingGraph) where
  finiteGraphClosed : G.isFiniteGraph
  undirectedClosed : G.isUndirected
  sparseClosed : G.isSparse

def RandomIsingGraphClosed (G : RandomIsingGraph) : Prop :=
  G.isFiniteGraph ∧ G.isUndirected ∧ G.isSparse

theorem random_ising_graph_closed_from_evidence (G : RandomIsingGraph) (E : RandomIsingGraphEvidence G) : RandomIsingGraphClosed G := by
  exact And.intro E.finiteGraphClosed (And.intro E.undirectedClosed E.sparseClosed)

end DisorderedSystemsRandomIsingModelsCanonicalLaneLean
end HautevilleHouse