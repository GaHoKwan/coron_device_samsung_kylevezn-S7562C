.class Llibcore/net/http/RequestHeaders$1;
.super Ljava/lang/Object;
.source "RequestHeaders.java"

# interfaces
.implements Llibcore/net/http/HeaderParser$CacheControlHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llibcore/net/http/RequestHeaders;-><init>(Ljava/net/URI;Llibcore/net/http/RawHeaders;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llibcore/net/http/RequestHeaders;


# direct methods
.method constructor <init>(Llibcore/net/http/RequestHeaders;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Llibcore/net/http/RequestHeaders$1;->this$0:Llibcore/net/http/RequestHeaders;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "directive"
    .parameter "parameter"

    .prologue
    const/4 v1, 0x1

    .line 70
    const-string v0, "no-cache"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Llibcore/net/http/RequestHeaders$1;->this$0:Llibcore/net/http/RequestHeaders;

    #setter for: Llibcore/net/http/RequestHeaders;->noCache:Z
    invoke-static {v0, v1}, Llibcore/net/http/RequestHeaders;->access$002(Llibcore/net/http/RequestHeaders;Z)Z

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    const-string v0, "max-age"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    iget-object v0, p0, Llibcore/net/http/RequestHeaders$1;->this$0:Llibcore/net/http/RequestHeaders;

    invoke-static {p2}, Llibcore/net/http/HeaderParser;->parseSeconds(Ljava/lang/String;)I

    move-result v1

    #setter for: Llibcore/net/http/RequestHeaders;->maxAgeSeconds:I
    invoke-static {v0, v1}, Llibcore/net/http/RequestHeaders;->access$102(Llibcore/net/http/RequestHeaders;I)I

    goto :goto_0

    .line 74
    :cond_2
    const-string v0, "max-stale"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 75
    iget-object v0, p0, Llibcore/net/http/RequestHeaders$1;->this$0:Llibcore/net/http/RequestHeaders;

    invoke-static {p2}, Llibcore/net/http/HeaderParser;->parseSeconds(Ljava/lang/String;)I

    move-result v1

    #setter for: Llibcore/net/http/RequestHeaders;->maxStaleSeconds:I
    invoke-static {v0, v1}, Llibcore/net/http/RequestHeaders;->access$202(Llibcore/net/http/RequestHeaders;I)I

    goto :goto_0

    .line 76
    :cond_3
    const-string v0, "min-fresh"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 77
    iget-object v0, p0, Llibcore/net/http/RequestHeaders$1;->this$0:Llibcore/net/http/RequestHeaders;

    invoke-static {p2}, Llibcore/net/http/HeaderParser;->parseSeconds(Ljava/lang/String;)I

    move-result v1

    #setter for: Llibcore/net/http/RequestHeaders;->minFreshSeconds:I
    invoke-static {v0, v1}, Llibcore/net/http/RequestHeaders;->access$302(Llibcore/net/http/RequestHeaders;I)I

    goto :goto_0

    .line 78
    :cond_4
    const-string v0, "only-if-cached"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Llibcore/net/http/RequestHeaders$1;->this$0:Llibcore/net/http/RequestHeaders;

    #setter for: Llibcore/net/http/RequestHeaders;->onlyIfCached:Z
    invoke-static {v0, v1}, Llibcore/net/http/RequestHeaders;->access$402(Llibcore/net/http/RequestHeaders;Z)Z

    goto :goto_0
.end method
