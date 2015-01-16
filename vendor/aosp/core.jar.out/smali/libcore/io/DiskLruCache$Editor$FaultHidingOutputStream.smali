.class Llibcore/io/DiskLruCache$Editor$FaultHidingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/io/DiskLruCache$Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaultHidingOutputStream"
.end annotation


# instance fields
.field final synthetic this$1:Llibcore/io/DiskLruCache$Editor;


# direct methods
.method private constructor <init>(Llibcore/io/DiskLruCache$Editor;Ljava/io/OutputStream;)V
    .locals 0
    .parameter
    .parameter "out"

    .prologue
    .line 744
    iput-object p1, p0, Llibcore/io/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Llibcore/io/DiskLruCache$Editor;

    .line 745
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 746
    return-void
.end method

.method synthetic constructor <init>(Llibcore/io/DiskLruCache$Editor;Ljava/io/OutputStream;Llibcore/io/DiskLruCache$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 743
    invoke-direct {p0, p1, p2}, Llibcore/io/DiskLruCache$Editor$FaultHidingOutputStream;-><init>(Llibcore/io/DiskLruCache$Editor;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 766
    :try_start_0
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 770
    :goto_0
    return-void

    .line 767
    :catch_0
    move-exception v0

    .line 768
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Llibcore/io/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Llibcore/io/DiskLruCache$Editor;

    const/4 v2, 0x1

    #setter for: Llibcore/io/DiskLruCache$Editor;->hasErrors:Z
    invoke-static {v1, v2}, Llibcore/io/DiskLruCache$Editor;->access$1902(Llibcore/io/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method

.method public flush()V
    .locals 3

    .prologue
    .line 774
    :try_start_0
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 778
    :goto_0
    return-void

    .line 775
    :catch_0
    move-exception v0

    .line 776
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Llibcore/io/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Llibcore/io/DiskLruCache$Editor;

    const/4 v2, 0x1

    #setter for: Llibcore/io/DiskLruCache$Editor;->hasErrors:Z
    invoke-static {v1, v2}, Llibcore/io/DiskLruCache$Editor;->access$1902(Llibcore/io/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method

.method public write(I)V
    .locals 3
    .parameter "oneByte"

    .prologue
    .line 750
    :try_start_0
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 754
    :goto_0
    return-void

    .line 751
    :catch_0
    move-exception v0

    .line 752
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Llibcore/io/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Llibcore/io/DiskLruCache$Editor;

    const/4 v2, 0x1

    #setter for: Llibcore/io/DiskLruCache$Editor;->hasErrors:Z
    invoke-static {v1, v2}, Llibcore/io/DiskLruCache$Editor;->access$1902(Llibcore/io/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method

.method public write([BII)V
    .locals 3
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 758
    :try_start_0
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 762
    :goto_0
    return-void

    .line 759
    :catch_0
    move-exception v0

    .line 760
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Llibcore/io/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Llibcore/io/DiskLruCache$Editor;

    const/4 v2, 0x1

    #setter for: Llibcore/io/DiskLruCache$Editor;->hasErrors:Z
    invoke-static {v1, v2}, Llibcore/io/DiskLruCache$Editor;->access$1902(Llibcore/io/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method
