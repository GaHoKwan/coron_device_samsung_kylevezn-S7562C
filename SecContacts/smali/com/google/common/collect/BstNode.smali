.class Lcom/google/common/collect/BstNode;
.super Ljava/lang/Object;
.source "BstNode.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/BstNode$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "N:",
        "Lcom/google/common/collect/BstNode",
        "<TK;TN;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final left:Lcom/google/common/collect/BstNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TN;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final right:Lcom/google/common/collect/BstNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TN;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)V
    .locals 0
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TN;TN;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, this:Lcom/google/common/collect/BstNode;,"Lcom/google/common/collect/BstNode<TK;TN;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, left:Lcom/google/common/collect/BstNode;,"TN;"
    .local p3, right:Lcom/google/common/collect/BstNode;,"TN;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/google/common/collect/BstNode;->key:Ljava/lang/Object;

    .line 65
    iput-object p2, p0, Lcom/google/common/collect/BstNode;->left:Lcom/google/common/collect/BstNode;

    .line 66
    iput-object p3, p0, Lcom/google/common/collect/BstNode;->right:Lcom/google/common/collect/BstNode;

    .line 67
    return-void
.end method


# virtual methods
.method public final childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;
    .locals 2
    .parameter "side"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BstSide;",
            ")TN;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 82
    .local p0, this:Lcom/google/common/collect/BstNode;,"Lcom/google/common/collect/BstNode<TK;TN;>;"
    sget-object v0, Lcom/google/common/collect/BstNode$1;->$SwitchMap$com$google$common$collect$BstSide:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 88
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 84
    :pswitch_0
    iget-object v0, p0, Lcom/google/common/collect/BstNode;->left:Lcom/google/common/collect/BstNode;

    .line 86
    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/google/common/collect/BstNode;->right:Lcom/google/common/collect/BstNode;

    goto :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final getChild(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;
    .locals 2
    .parameter "side"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BstSide;",
            ")TN;"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, this:Lcom/google/common/collect/BstNode;,"Lcom/google/common/collect/BstNode<TK;TN;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/BstNode;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    .line 106
    .local v0, child:Lcom/google/common/collect/BstNode;,"TN;"
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 107
    return-object v0

    .line 106
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 74
    .local p0, this:Lcom/google/common/collect/BstNode;,"Lcom/google/common/collect/BstNode<TK;TN;>;"
    iget-object v0, p0, Lcom/google/common/collect/BstNode;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public final hasChild(Lcom/google/common/collect/BstSide;)Z
    .locals 1
    .parameter "side"

    .prologue
    .line 96
    .local p0, this:Lcom/google/common/collect/BstNode;,"Lcom/google/common/collect/BstNode<TK;TN;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/BstNode;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
