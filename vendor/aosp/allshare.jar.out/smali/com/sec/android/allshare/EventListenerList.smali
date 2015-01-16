.class Lcom/sec/android/allshare/EventListenerList;
.super Ljava/util/concurrent/CopyOnWriteArrayList;
.source "IAppControlAPI.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/CopyOnWriteArrayList",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x52bc38a70445ad7fL


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1562
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 1570
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 1571
    const/4 v0, 0x0

    .line 1572
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
