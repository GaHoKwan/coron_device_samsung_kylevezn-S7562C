.class public final Ljava/io/FileDescriptor;
.super Ljava/lang/Object;
.source "FileDescriptor.java"


# static fields
.field public static final err:Ljava/io/FileDescriptor;

.field public static final in:Ljava/io/FileDescriptor;

.field public static final out:Ljava/io/FileDescriptor;


# instance fields
.field private descriptor:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    sput-object v0, Ljava/io/FileDescriptor;->in:Ljava/io/FileDescriptor;

    .line 40
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    sput-object v0, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    .line 45
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    sput-object v0, Ljava/io/FileDescriptor;->err:Ljava/io/FileDescriptor;

    .line 54
    sget-object v0, Ljava/io/FileDescriptor;->in:Ljava/io/FileDescriptor;

    sget v1, Llibcore/io/OsConstants;->STDIN_FILENO:I

    iput v1, v0, Ljava/io/FileDescriptor;->descriptor:I

    .line 55
    sget-object v0, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    sget v1, Llibcore/io/OsConstants;->STDOUT_FILENO:I

    iput v1, v0, Ljava/io/FileDescriptor;->descriptor:I

    .line 56
    sget-object v0, Ljava/io/FileDescriptor;->err:Ljava/io/FileDescriptor;

    sget v1, Llibcore/io/OsConstants;->STDERR_FILENO:I

    iput v1, v0, Ljava/io/FileDescriptor;->descriptor:I

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/FileDescriptor;->descriptor:I

    .line 63
    return-void
.end method


# virtual methods
.method public final getInt$()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Ljava/io/FileDescriptor;->descriptor:I

    return v0
.end method

.method public final setInt$(I)V
    .locals 0
    .parameter "fd"

    .prologue
    .line 101
    iput p1, p0, Ljava/io/FileDescriptor;->descriptor:I

    .line 102
    return-void
.end method

.method public sync()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/SyncFailedException;
        }
    .end annotation

    .prologue
    .line 71
    :try_start_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v2, p0}, Llibcore/io/Os;->fsync(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, errnoException:Llibcore/io/ErrnoException;
    new-instance v1, Ljava/io/SyncFailedException;

    invoke-virtual {v0}, Llibcore/io/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/SyncFailedException;-><init>(Ljava/lang/String;)V

    .line 74
    .local v1, sfe:Ljava/io/SyncFailedException;
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 75
    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FileDescriptor["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/io/FileDescriptor;->descriptor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public valid()Z
    .locals 2

    .prologue
    .line 83
    iget v0, p0, Ljava/io/FileDescriptor;->descriptor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
