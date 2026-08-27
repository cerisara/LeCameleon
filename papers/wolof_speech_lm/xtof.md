le titre est trop general: tous les speech-language models sont semi-sup aujourd'hui ?

why not: "A recipe to adapt multi-lingual speech models to less-represented languages: evidence for Wolof"

2.1:
- description de "discrete speech targets are derived from intermediate layers of the model itself" pas claire
- "introduces substantial memory costs and adds complexity": trop vague, il faudrait des formules ou des chiffres
- le discours est un peu bizarre: tu commences par dire que Hubert est mieux que Wav2vec, puis tu dis qu'il a tel et
  tel defauts, puis tu finis en disant "mais on s'en fout, on l'utilise quand meme": si c'est pour en arriver la,
  inutile de parler des defauts du tout (ils n'apportent rien au papier) !
- il manque un SOTA sur les speech repr.: n'y a-t-il rien d'autre que W2V et Hubert ?
  Ca serait mieux d'avoir une section "related works" bien identifiee.

2.2:
- qu'est-ce que ca veut dire "collecting data in the wild" ?
- c'est un peu bizarre de mesurer le corpus initial en TB, et le corpus final en heures: on ne sait pas
  du coup le taux de reduction du filtering
- est-ce que tu vas release ton dataset open ?

2.3:
- "speech discretization": une petite ref qui decrit ca pour Hubert ?
- pourquoi avoir choisi layer 6 ? D'autes hyper-parms de KMeans ne sont pas precises: nb of clusters
- Training: pourquoi ces hyper-parms ?
- tu insistes que tu train moins d'epoch: pourquoi est-ce que ca marche pour toi et pourquoi il en faut plus pour Hubert ?

2.4:
- baselines: ca parait pas fairplay d'utiliser les same hyper-parms pour finetune les baselines, car le reviewer pensera
  que tu as optimise ces hyperparms pour ton system
- c'est bizarre que le model d'Orange soit le plus mauvais, alors qu'il est train avec le plus de data: pourquoi ?

globalement, est-ce qu'il ne faudrait pas un peu changer le discours global, en disant qu'on claim que
"les modeles de speech multi-lingues ne sont pas suffisants pour les langues les moins dotees
/ le transfert inter-langue attendu n'est pas suffisant: il faut des modeles specifiques"
et qu'on demontre cela pour le Wolof ?
peut-etre qu'il suffit d'ajouter simplement un encadré avec "insight 1: multi-lingual speech models are not enough..."

Une question naturelle du reviewer sera "et si on fait un model multi-lingue avec une plus grande proportion de Wolof,
n'est pas meilleur ?" ou autrement dit, est-ce que tout n'est pas simplement une question de data mix ?


