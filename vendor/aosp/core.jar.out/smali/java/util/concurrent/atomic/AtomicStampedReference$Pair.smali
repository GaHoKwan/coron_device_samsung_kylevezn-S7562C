.class Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;
.super Ljava/lang/Object;
.source "AtomicStampedReference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/atomic/AtomicStampedReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Pair"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final reference:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final stamp:I


# direct methods
.method private constructor <init>(Ljava/lang/Object;I)V
    .locals 0
    .parameter
    .parameter "stamp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, this:Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;,"Ljava/util/concurrent/atomic/AtomicStampedReference$Pair<TT;>;"
    .local p1, reference:Ljava/lang/Object;,"TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->reference:Ljava/lang/Object;

    .line 28
    iput p2, p0, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->stamp:I

    .line 29
    return-void
.end method

.method static of(Ljava/lang/Object;I)Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;
    .locals 1
    .parameter
    .parameter "stamp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;I)",
            "Ljava/util/concurrent/atomic/AtomicStampedReference$Pair",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, reference:Ljava/lang/Object;,"TT;"
    new-instance v0, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;

    invoke-direct {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method
