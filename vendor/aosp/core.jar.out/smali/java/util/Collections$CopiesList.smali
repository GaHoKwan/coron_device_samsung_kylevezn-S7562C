.class final Ljava/util/Collections$CopiesList;
.super Ljava/util/AbstractList;
.source "Collections.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CopiesList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x26033c45b17003f8L


# instance fields
.field private final element:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private final n:I


# direct methods
.method constructor <init>(ILjava/lang/Object;)V
    .locals 1
    .parameter "length"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, this:Ljava/util/Collections$CopiesList;,"Ljava/util/Collections$CopiesList<TE;>;"
    .local p2, object:Ljava/lang/Object;,"TE;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 65
    if-gez p1, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 68
    :cond_0
    iput p1, p0, Ljava/util/Collections$CopiesList;->n:I

    .line 69
    iput-object p2, p0, Ljava/util/Collections$CopiesList;->element:Ljava/lang/Object;

    .line 70
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 73
    .local p0, this:Ljava/util/Collections$CopiesList;,"Ljava/util/Collections$CopiesList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CopiesList;->element:Ljava/lang/Object;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ljava/util/Collections$CopiesList;->element:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .parameter "location"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, this:Ljava/util/Collections$CopiesList;,"Ljava/util/Collections$CopiesList<TE;>;"
    if-ltz p1, :cond_0

    iget v0, p0, Ljava/util/Collections$CopiesList;->n:I

    if-ge p1, v0, :cond_0

    .line 82
    iget-object v0, p0, Ljava/util/Collections$CopiesList;->element:Ljava/lang/Object;

    return-object v0

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 77
    .local p0, this:Ljava/util/Collections$CopiesList;,"Ljava/util/Collections$CopiesList<TE;>;"
    iget v0, p0, Ljava/util/Collections$CopiesList;->n:I

    return v0
.end method
