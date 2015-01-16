.class public Ljava/io/ObjectInputStream;
.super Ljava/io/InputStream;
.source "ObjectInputStream.java"

# interfaces
.implements Ljava/io/ObjectInput;
.implements Ljava/io/ObjectStreamConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/io/ObjectInputStream$GetField;,
        Ljava/io/ObjectInputStream$InputValidationDesc;
    }
.end annotation


# static fields
.field private static final PRIMITIVE_CLASSES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final UNSHARED_OBJ:Ljava/lang/Object;

.field private static final bootstrapLoader:Ljava/lang/ClassLoader;

.field private static final systemLoader:Ljava/lang/ClassLoader;


# instance fields
.field private cachedSuperclasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private callerClassLoader:Ljava/lang/ClassLoader;

.field private currentClass:Ljava/io/ObjectStreamClass;

.field private currentObject:Ljava/lang/Object;

.field private descriptorHandle:I

.field private emptyStream:Ljava/io/InputStream;

.field private enableResolve:Z

.field private hasPushbackTC:Z

.field private input:Ljava/io/DataInputStream;

.field private mustResolve:Z

.field private nestedLevels:I

.field private nextHandle:I

.field private objectsRead:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private primitiveData:Ljava/io/InputStream;

.field private primitiveTypes:Ljava/io/DataInputStream;

.field private pushbackTC:B

.field private subclassOverridingImplementation:Z

.field private validations:[Ljava/io/ObjectInputStream$InputValidationDesc;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/io/ObjectInputStream;->UNSHARED_OBJ:Ljava/lang/Object;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljava/io/ObjectInputStream;->PRIMITIVE_CLASSES:Ljava/util/HashMap;

    .line 106
    sget-object v0, Ljava/io/ObjectInputStream;->PRIMITIVE_CLASSES:Ljava/util/HashMap;

    const-string v1, "boolean"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Ljava/io/ObjectInputStream;->PRIMITIVE_CLASSES:Ljava/util/HashMap;

    const-string v1, "byte"

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Ljava/io/ObjectInputStream;->PRIMITIVE_CLASSES:Ljava/util/HashMap;

    const-string v1, "char"

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Ljava/io/ObjectInputStream;->PRIMITIVE_CLASSES:Ljava/util/HashMap;

    const-string v1, "double"

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Ljava/io/ObjectInputStream;->PRIMITIVE_CLASSES:Ljava/util/HashMap;

    const-string v1, "float"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Ljava/io/ObjectInputStream;->PRIMITIVE_CLASSES:Ljava/util/HashMap;

    const-string v1, "int"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Ljava/io/ObjectInputStream;->PRIMITIVE_CLASSES:Ljava/util/HashMap;

    const-string v1, "long"

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Ljava/io/ObjectInputStream;->PRIMITIVE_CLASSES:Ljava/util/HashMap;

    const-string v1, "short"

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Ljava/io/ObjectInputStream;->PRIMITIVE_CLASSES:Ljava/util/HashMap;

    const-string v1, "void"

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2037
    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Ljava/io/ObjectInputStream;->bootstrapLoader:Ljava/lang/ClassLoader;

    .line 2038
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Ljava/io/ObjectInputStream;->systemLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method protected constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 342
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 47
    new-instance v0, Ljava/io/ByteArrayInputStream;

    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Ljava/io/ObjectInputStream;->emptyStream:Ljava/io/InputStream;

    .line 72
    iget-object v0, p0, Ljava/io/ObjectInputStream;->emptyStream:Ljava/io/InputStream;

    iput-object v0, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    .line 99
    iput-boolean v2, p0, Ljava/io/ObjectInputStream;->mustResolve:Z

    .line 102
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/ObjectInputStream;->descriptorHandle:I

    .line 1274
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/io/ObjectInputStream;->cachedSuperclasses:Ljava/util/HashMap;

    .line 345
    iput-boolean v2, p0, Ljava/io/ObjectInputStream;->subclassOverridingImplementation:Z

    .line 346
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/StreamCorruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 360
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 47
    new-instance v0, Ljava/io/ByteArrayInputStream;

    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Ljava/io/ObjectInputStream;->emptyStream:Ljava/io/InputStream;

    .line 72
    iget-object v0, p0, Ljava/io/ObjectInputStream;->emptyStream:Ljava/io/InputStream;

    iput-object v0, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/ObjectInputStream;->mustResolve:Z

    .line 102
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/ObjectInputStream;->descriptorHandle:I

    .line 1274
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/io/ObjectInputStream;->cachedSuperclasses:Ljava/util/HashMap;

    .line 361
    instance-of v0, p1, Ljava/io/DataInputStream;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/io/DataInputStream;

    .end local p1
    :goto_0
    iput-object p1, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    .line 363
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    .line 364
    iput-boolean v2, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    .line 365
    iput-boolean v2, p0, Ljava/io/ObjectInputStream;->subclassOverridingImplementation:Z

    .line 366
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->resetState()V

    .line 367
    iput v2, p0, Ljava/io/ObjectInputStream;->nestedLevels:I

    .line 370
    iget-object v0, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    iput-object v0, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    .line 372
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readStreamHeader()V

    .line 373
    iget-object v0, p0, Ljava/io/ObjectInputStream;->emptyStream:Ljava/io/InputStream;

    iput-object v0, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    .line 374
    return-void

    .line 361
    .restart local p1
    :cond_0
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v0

    goto :goto_0
.end method

.method private cacheSuperclassesFor(Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 1277
    .local p1, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1278
    .local v1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Class<*>;>;"
    move-object v0, p1

    .line 1279
    .local v0, nextClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 1280
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    .line 1281
    .local v2, testClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v2, :cond_0

    .line 1282
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1284
    :cond_0
    move-object v0, v2

    .line 1285
    goto :goto_0

    .line 1286
    .end local v2           #testClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_1
    iget-object v3, p0, Ljava/io/ObjectInputStream;->cachedSuperclasses:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1287
    return-object v1
.end method

.method private checkReadPrimitiveTypes()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 394
    iget-object v1, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    iget-object v2, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    if-lez v1, :cond_1

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 416
    .local v0, next:I
    :pswitch_0
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->resetState()V

    .line 401
    .end local v0           #next:I
    :cond_1
    const/4 v0, 0x0

    .line 402
    .restart local v0       #next:I
    iget-boolean v1, p0, Ljava/io/ObjectInputStream;->hasPushbackTC:Z

    if-eqz v1, :cond_2

    .line 403
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/io/ObjectInputStream;->hasPushbackTC:Z

    .line 408
    :goto_1
    iget-byte v1, p0, Ljava/io/ObjectInputStream;->pushbackTC:B

    packed-switch v1, :pswitch_data_0

    .line 419
    :pswitch_1
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 420
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->pushbackTC()V

    goto :goto_0

    .line 405
    :cond_2
    iget-object v1, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 406
    int-to-byte v1, v0

    iput-byte v1, p0, Ljava/io/ObjectInputStream;->pushbackTC:B

    goto :goto_1

    .line 410
    :pswitch_2
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readBlockData()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v1, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    goto :goto_0

    .line 413
    :pswitch_3
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readBlockDataLong()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v1, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    goto :goto_0

    .line 408
    :pswitch_data_0
    .packed-switch 0x77
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static checkedSetSuperClassDesc(Ljava/io/ObjectStreamClass;Ljava/io/ObjectStreamClass;)V
    .locals 1
    .parameter "desc"
    .parameter "superDesc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/StreamCorruptedException;
        }
    .end annotation

    .prologue
    .line 2409
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2410
    new-instance v0, Ljava/io/StreamCorruptedException;

    invoke-direct {v0}, Ljava/io/StreamCorruptedException;-><init>()V

    throw v0

    .line 2412
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/ObjectStreamClass;->setSuperclass(Ljava/io/ObjectStreamClass;)V

    .line 2413
    return-void
.end method

.method private corruptStream(B)Ljava/io/StreamCorruptedException;
    .locals 3
    .parameter "tc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/StreamCorruptedException;
        }
    .end annotation

    .prologue
    .line 701
    new-instance v0, Ljava/io/StreamCorruptedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit16 v2, p1, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private discardData()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 653
    iget-object v2, p0, Ljava/io/ObjectInputStream;->emptyStream:Ljava/io/InputStream;

    iput-object v2, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    .line 654
    iget-boolean v0, p0, Ljava/io/ObjectInputStream;->mustResolve:Z

    .line 655
    .local v0, resolve:Z
    const/4 v2, 0x0

    iput-boolean v2, p0, Ljava/io/ObjectInputStream;->mustResolve:Z

    .line 657
    :goto_0
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextTC()B

    move-result v1

    .line 658
    .local v1, tc:B
    const/16 v2, 0x78

    if-ne v1, v2, :cond_0

    .line 659
    iput-boolean v0, p0, Ljava/io/ObjectInputStream;->mustResolve:Z

    .line 660
    return-void

    .line 662
    :cond_0
    invoke-direct {p0, v1}, Ljava/io/ObjectInputStream;->readContent(B)Ljava/lang/Object;

    goto :goto_0
.end method

.method private findStreamSuperclass(Ljava/lang/Class;Ljava/util/List;I)I
    .locals 6
    .parameter
    .parameter
    .parameter "lastIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Ljava/io/ObjectStreamClass;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 1291
    .local p1, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p2, classList:Ljava/util/List;,"Ljava/util/List<Ljava/io/ObjectStreamClass;>;"
    move v2, p3

    .local v2, i:I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .local v0, end:I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 1292
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/ObjectStreamClass;

    .line 1293
    .local v3, objCl:Ljava/io/ObjectStreamClass;
    invoke-virtual {v3}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1295
    .local v1, forName:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1296
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1306
    .end local v1           #forName:Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #objCl:Ljava/io/ObjectStreamClass;
    :cond_0
    :goto_1
    return v2

    .line 1301
    .restart local v1       #forName:Ljava/lang/String;
    .restart local v2       #i:I
    .restart local v3       #objCl:Ljava/io/ObjectStreamClass;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1291
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1306
    .end local v1           #forName:Ljava/lang/String;
    .end local v3           #objCl:Ljava/io/ObjectStreamClass;
    :cond_3
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private static formatClassSig(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "classSig"

    .prologue
    .line 952
    const/4 v1, 0x0

    .line 953
    .local v1, start:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 955
    .local v0, end:I
    if-gtz v0, :cond_1

    .line 970
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 960
    .restart local p0
    :cond_1
    :goto_1
    const-string v2, "[L"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_2

    .line 961
    add-int/lit8 v1, v1, 0x2

    .line 962
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 965
    :cond_2
    if-lez v1, :cond_0

    .line 966
    add-int/lit8 v1, v1, -0x2

    .line 967
    add-int/lit8 v0, v0, 0x1

    .line 968
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static getBaseName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "fullName"

    .prologue
    .line 2398
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 2400
    .local v0, k:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 2403
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .restart local p0
    :cond_1
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static getClosestUserClassLoader()Ljava/lang/ClassLoader;
    .locals 7

    .prologue
    .line 2046
    const/4 v6, -0x1

    invoke-static {v6}, Ldalvik/system/VMStack;->getClasses(I)[Ljava/lang/Class;

    move-result-object v5

    .line 2047
    .local v5, stackClasses:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/Class;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 2048
    .local v4, stackClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 2049
    .local v3, loader:Ljava/lang/ClassLoader;
    if-eqz v3, :cond_0

    sget-object v6, Ljava/io/ObjectInputStream;->bootstrapLoader:Ljava/lang/ClassLoader;

    if-eq v3, v6, :cond_0

    sget-object v6, Ljava/io/ObjectInputStream;->systemLoader:Ljava/lang/ClassLoader;

    if-eq v3, v6, :cond_0

    .line 2054
    .end local v3           #loader:Ljava/lang/ClassLoader;
    .end local v4           #stackClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_1
    return-object v3

    .line 2047
    .restart local v3       #loader:Ljava/lang/ClassLoader;
    .restart local v4       #stackClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2054
    .end local v3           #loader:Ljava/lang/ClassLoader;
    .end local v4           #stackClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private missingClassDescriptor()Ljava/io/InvalidClassException;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    .prologue
    .line 1900
    new-instance v0, Ljava/io/InvalidClassException;

    const-string v1, "Read null attempting to read class descriptor for object"

    invoke-direct {v0, v1}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private nextHandle()I
    .locals 2

    .prologue
    .line 486
    iget v0, p0, Ljava/io/ObjectInputStream;->nextHandle:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/io/ObjectInputStream;->nextHandle:I

    return v0
.end method

.method private nextTC()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 501
    iget-boolean v0, p0, Ljava/io/ObjectInputStream;->hasPushbackTC:Z

    if-eqz v0, :cond_0

    .line 502
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/ObjectInputStream;->hasPushbackTC:Z

    .line 508
    :goto_0
    iget-byte v0, p0, Ljava/io/ObjectInputStream;->pushbackTC:B

    return v0

    .line 506
    :cond_0
    iget-object v0, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Ljava/io/ObjectInputStream;->pushbackTC:B

    goto :goto_0
.end method

.method private pushbackTC()V
    .locals 1

    .prologue
    .line 515
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/ObjectInputStream;->hasPushbackTC:Z

    .line 516
    return-void
.end method

.method private readBlockData()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 579
    iget-object v1, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    new-array v0, v1, [B

    .line 580
    .local v0, result:[B
    iget-object v1, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 581
    return-object v0
.end method

.method private readBlockDataLong()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 595
    iget-object v1, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    new-array v0, v1, [B

    .line 596
    .local v0, result:[B
    iget-object v1, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 597
    return-object v0
.end method

.method private readClassDesc()Ljava/io/ObjectStreamClass;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 680
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextTC()B

    move-result v2

    .line 681
    .local v2, tc:B
    sparse-switch v2, :sswitch_data_0

    .line 696
    invoke-direct {p0, v2}, Ljava/io/ObjectInputStream;->corruptStream(B)Ljava/io/StreamCorruptedException;

    move-result-object v3

    throw v3

    .line 683
    :sswitch_0
    invoke-direct {p0, v4}, Ljava/io/ObjectInputStream;->readNewClassDesc(Z)Ljava/io/ObjectStreamClass;

    move-result-object v1

    .line 694
    :goto_0
    return-object v1

    .line 685
    :sswitch_1
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readNewProxyClassDesc()Ljava/lang/Class;

    move-result-object v0

    .line 686
    .local v0, proxyClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v0}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v1

    .line 687
    .local v1, streamClass:Ljava/io/ObjectStreamClass;
    sget-object v3, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    invoke-virtual {v1, v3}, Ljava/io/ObjectStreamClass;->setLoadFields([Ljava/io/ObjectStreamField;)V

    .line 688
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextHandle()I

    move-result v3

    invoke-direct {p0, v1, v3, v4}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;IZ)V

    .line 689
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readClassDesc()Ljava/io/ObjectStreamClass;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/io/ObjectInputStream;->checkedSetSuperClassDesc(Ljava/io/ObjectStreamClass;Ljava/io/ObjectStreamClass;)V

    goto :goto_0

    .line 692
    .end local v0           #proxyClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #streamClass:Ljava/io/ObjectStreamClass;
    :sswitch_2
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readCyclicReference()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/ObjectStreamClass;

    move-object v1, v3

    goto :goto_0

    .line 694
    :sswitch_3
    const/4 v1, 0x0

    goto :goto_0

    .line 681
    :sswitch_data_0
    .sparse-switch
        0x70 -> :sswitch_3
        0x71 -> :sswitch_2
        0x72 -> :sswitch_0
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private readContent(B)Ljava/lang/Object;
    .locals 3
    .parameter "tc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 721
    packed-switch p1, :pswitch_data_0

    .line 749
    :pswitch_0
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->corruptStream(B)Ljava/io/StreamCorruptedException;

    move-result-object v1

    throw v1

    .line 723
    :pswitch_1
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readBlockData()[B

    move-result-object v1

    .line 747
    :goto_0
    :pswitch_2
    return-object v1

    .line 725
    :pswitch_3
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readBlockDataLong()[B

    move-result-object v1

    goto :goto_0

    .line 727
    :pswitch_4
    invoke-direct {p0, v2}, Ljava/io/ObjectInputStream;->readNewClass(Z)Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 729
    :pswitch_5
    invoke-direct {p0, v2}, Ljava/io/ObjectInputStream;->readNewClassDesc(Z)Ljava/io/ObjectStreamClass;

    move-result-object v1

    goto :goto_0

    .line 731
    :pswitch_6
    invoke-direct {p0, v2}, Ljava/io/ObjectInputStream;->readNewArray(Z)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 733
    :pswitch_7
    invoke-direct {p0, v2}, Ljava/io/ObjectInputStream;->readNewObject(Z)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 735
    :pswitch_8
    invoke-direct {p0, v2}, Ljava/io/ObjectInputStream;->readNewString(Z)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 737
    :pswitch_9
    invoke-direct {p0, v2}, Ljava/io/ObjectInputStream;->readNewLongString(Z)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 739
    :pswitch_a
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readCyclicReference()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 743
    :pswitch_b
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readException()Ljava/lang/Exception;

    move-result-object v0

    .line 744
    .local v0, exc:Ljava/lang/Exception;
    new-instance v1, Ljava/io/WriteAbortedException;

    const-string v2, "Read an exception"

    invoke-direct {v1, v2, v0}, Ljava/io/WriteAbortedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 746
    .end local v0           #exc:Ljava/lang/Exception;
    :pswitch_c
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->resetState()V

    goto :goto_0

    .line 721
    nop

    :pswitch_data_0
    .packed-switch 0x70
        :pswitch_2
        :pswitch_a
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_c
        :pswitch_3
        :pswitch_b
        :pswitch_9
    .end packed-switch
.end method

.method private readCyclicReference()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 833
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readNewHandle()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/io/ObjectInputStream;->registeredObjectRead(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private readEnum(Z)Ljava/lang/Object;
    .locals 8
    .parameter "unshared"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/OptionalDataException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1601
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readEnumDesc()Ljava/io/ObjectStreamClass;

    move-result-object v0

    .line 1602
    .local v0, classDesc:Ljava/io/ObjectStreamClass;
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextHandle()I

    move-result v3

    .line 1605
    .local v3, newHandle:I
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextTC()B

    move-result v5

    .line 1606
    .local v5, tc:B
    packed-switch v5, :pswitch_data_0

    .line 1618
    :pswitch_0
    invoke-direct {p0, v5}, Ljava/io/ObjectInputStream;->corruptStream(B)Ljava/io/StreamCorruptedException;

    move-result-object v6

    throw v6

    .line 1608
    :pswitch_1
    if-eqz p1, :cond_0

    .line 1609
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readNewHandle()I

    .line 1610
    new-instance v6, Ljava/io/InvalidObjectException;

    const-string v7, "Unshared read of back reference"

    invoke-direct {v6, v7}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1612
    :cond_0
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readCyclicReference()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1623
    .local v2, name:Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1627
    .local v4, result:Ljava/lang/Enum;,"Ljava/lang/Enum<*>;"
    invoke-direct {p0, v4, v3, p1}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;IZ)V

    .line 1628
    return-object v4

    .line 1615
    .end local v2           #name:Ljava/lang/String;
    .end local v4           #result:Ljava/lang/Enum;,"Ljava/lang/Enum<*>;"
    :pswitch_2
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readNewString(Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1616
    .restart local v2       #name:Ljava/lang/String;
    goto :goto_0

    .line 1624
    :catch_0
    move-exception v1

    .line 1625
    .local v1, e:Ljava/lang/IllegalArgumentException;
    new-instance v6, Ljava/io/InvalidObjectException;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1606
    nop

    :pswitch_data_0
    .packed-switch 0x71
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private readEnumDesc()Ljava/io/ObjectStreamClass;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1553
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextTC()B

    move-result v0

    .line 1554
    .local v0, tc:B
    packed-switch v0, :pswitch_data_0

    .line 1562
    invoke-direct {p0, v0}, Ljava/io/ObjectInputStream;->corruptStream(B)Ljava/io/StreamCorruptedException;

    move-result-object v1

    throw v1

    .line 1556
    :pswitch_0
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readEnumDescInternal()Ljava/io/ObjectStreamClass;

    move-result-object v1

    .line 1560
    :goto_0
    return-object v1

    .line 1558
    :pswitch_1
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readCyclicReference()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/ObjectStreamClass;

    goto :goto_0

    .line 1560
    :pswitch_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1554
    :pswitch_data_0
    .packed-switch 0x70
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readEnumDescInternal()Ljava/io/ObjectStreamClass;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 1568
    iget-object v4, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    iput-object v4, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    .line 1569
    iget v1, p0, Ljava/io/ObjectInputStream;->descriptorHandle:I

    .line 1570
    .local v1, oldHandle:I
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextHandle()I

    move-result v4

    iput v4, p0, Ljava/io/ObjectInputStream;->descriptorHandle:I

    .line 1571
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readClassDescriptor()Ljava/io/ObjectStreamClass;

    move-result-object v0

    .line 1572
    .local v0, classDesc:Ljava/io/ObjectStreamClass;
    iget v4, p0, Ljava/io/ObjectInputStream;->descriptorHandle:I

    const/4 v5, 0x0

    invoke-direct {p0, v0, v4, v5}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;IZ)V

    .line 1573
    iput v1, p0, Ljava/io/ObjectInputStream;->descriptorHandle:I

    .line 1574
    iget-object v4, p0, Ljava/io/ObjectInputStream;->emptyStream:Ljava/io/InputStream;

    iput-object v4, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    .line 1575
    invoke-virtual {p0, v0}, Ljava/io/ObjectInputStream;->resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/ObjectStreamClass;->setClass(Ljava/lang/Class;)V

    .line 1577
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->discardData()V

    .line 1578
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readClassDesc()Ljava/io/ObjectStreamClass;

    move-result-object v2

    .line 1579
    .local v2, superClass:Ljava/io/ObjectStreamClass;
    invoke-static {v0, v2}, Ljava/io/ObjectInputStream;->checkedSetSuperClassDesc(Ljava/io/ObjectStreamClass;Ljava/io/ObjectStreamClass;)V

    .line 1581
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    move-result-wide v4

    cmp-long v4, v6, v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    move-result-wide v4

    cmp-long v4, v6, v4

    if-eqz v4, :cond_1

    .line 1582
    :cond_0
    new-instance v4, Ljava/io/InvalidClassException;

    invoke-virtual {v2}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Incompatible class (SUID): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " but expected "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 1585
    :cond_1
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextTC()B

    move-result v3

    .line 1587
    .local v3, tc:B
    const/16 v4, 0x78

    if-ne v3, v4, :cond_2

    .line 1589
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readClassDesc()Ljava/io/ObjectStreamClass;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/ObjectStreamClass;->setSuperclass(Ljava/io/ObjectStreamClass;)V

    .line 1594
    :goto_0
    return-object v0

    .line 1592
    :cond_2
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->pushbackTC()V

    goto :goto_0
.end method

.method private readException()Ljava/lang/Exception;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/WriteAbortedException;,
            Ljava/io/OptionalDataException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 878
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->resetSeenObjects()V

    .line 884
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    .line 888
    .local v0, exc:Ljava/lang/Exception;
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->resetSeenObjects()V

    .line 889
    return-object v0
.end method

.method private readFieldDescriptors(Ljava/io/ObjectStreamClass;)V
    .locals 10
    .parameter "cDesc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 910
    iget-object v9, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readShort()S

    move-result v6

    .line 911
    .local v6, numFields:S
    new-array v3, v6, [Ljava/io/ObjectStreamField;

    .line 915
    .local v3, fields:[Ljava/io/ObjectStreamField;
    invoke-virtual {p1, v3}, Ljava/io/ObjectStreamClass;->setLoadFields([Ljava/io/ObjectStreamField;)V

    .line 918
    const/4 v4, 0x0

    .local v4, i:S
    :goto_0
    if-ge v4, v6, :cond_1

    .line 919
    iget-object v9, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    int-to-char v8, v9

    .line 920
    .local v8, typecode:C
    iget-object v9, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 921
    .local v2, fieldName:Ljava/lang/String;
    invoke-static {v8}, Ljava/io/ObjectStreamClass;->isPrimitiveType(C)Z

    move-result v5

    .line 923
    .local v5, isPrimType:Z
    if-eqz v5, :cond_0

    .line 924
    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 941
    .local v0, classSig:Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Ljava/io/ObjectInputStream;->formatClassSig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 942
    new-instance v1, Ljava/io/ObjectStreamField;

    invoke-direct {v1, v0, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    .local v1, f:Ljava/io/ObjectStreamField;
    aput-object v1, v3, v4

    .line 918
    add-int/lit8 v9, v4, 0x1

    int-to-short v4, v9

    goto :goto_0

    .line 932
    .end local v0           #classSig:Ljava/lang/String;
    .end local v1           #f:Ljava/io/ObjectStreamField;
    :cond_0
    iget-boolean v7, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    .line 934
    .local v7, old:Z
    const/4 v9, 0x0

    :try_start_0
    iput-boolean v9, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    .line 935
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 937
    .restart local v0       #classSig:Ljava/lang/String;
    iput-boolean v7, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    goto :goto_1

    .end local v0           #classSig:Ljava/lang/String;
    :catchall_0
    move-exception v9

    iput-boolean v7, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    throw v9

    .line 945
    .end local v2           #fieldName:Ljava/lang/String;
    .end local v5           #isPrimType:Z
    .end local v7           #old:Z
    .end local v8           #typecode:C
    :cond_1
    return-void
.end method

.method private readFieldValues(Ljava/io/EmulatedFieldsForLoading;)V
    .locals 9
    .parameter "emulatedFields"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/OptionalDataException;,
            Ljava/io/InvalidClassException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1020
    invoke-virtual {p1}, Ljava/io/EmulatedFieldsForLoading;->emulatedFields()Ljava/io/EmulatedFields;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/EmulatedFields;->slots()[Ljava/io/EmulatedFields$ObjectSlot;

    move-result-object v5

    .line 1021
    .local v5, slots:[Ljava/io/EmulatedFields$ObjectSlot;
    move-object v0, v5

    .local v0, arr$:[Ljava/io/EmulatedFields$ObjectSlot;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_8

    aget-object v2, v0, v3

    .line 1022
    .local v2, element:Ljava/io/EmulatedFields$ObjectSlot;
    const/4 v7, 0x0

    iput-boolean v7, v2, Ljava/io/EmulatedFields$ObjectSlot;->defaulted:Z

    .line 1023
    iget-object v7, v2, Ljava/io/EmulatedFields$ObjectSlot;->field:Ljava/io/ObjectStreamField;

    invoke-virtual {v7}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v6

    .line 1024
    .local v6, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_0

    .line 1025
    iget-object v7, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v2, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    .line 1021
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1026
    :cond_0
    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_1

    .line 1027
    iget-object v7, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    iput-object v7, v2, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    goto :goto_1

    .line 1028
    :cond_1
    sget-object v7, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_2

    .line 1029
    iget-object v7, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readChar()C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    iput-object v7, v2, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    goto :goto_1

    .line 1030
    :cond_2
    sget-object v7, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_3

    .line 1031
    iget-object v7, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readShort()S

    move-result v7

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    iput-object v7, v2, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    goto :goto_1

    .line 1032
    :cond_3
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_4

    .line 1033
    iget-object v7, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, v2, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    goto :goto_1

    .line 1034
    :cond_4
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_5

    .line 1035
    iget-object v7, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v2, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    goto :goto_1

    .line 1036
    :cond_5
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_6

    .line 1037
    iget-object v7, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readFloat()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    iput-object v7, v2, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    goto :goto_1

    .line 1038
    :cond_6
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_7

    .line 1039
    iget-object v7, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    iput-object v7, v2, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;

    goto :goto_1

    .line 1043
    :cond_7
    :try_start_0
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v2, Ljava/io/EmulatedFields$ObjectSlot;->fieldValue:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1044
    :catch_0
    move-exception v1

    .line 1047
    .local v1, cnf:Ljava/lang/ClassNotFoundException;
    new-instance v7, Ljava/io/InvalidClassException;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1051
    .end local v1           #cnf:Ljava/lang/ClassNotFoundException;
    .end local v2           #element:Ljava/io/EmulatedFields$ObjectSlot;
    .end local v6           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_8
    return-void
.end method

.method private readFieldValues(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    .locals 30
    .parameter "obj"
    .parameter "classDesc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/OptionalDataException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1083
    invoke-virtual/range {p2 .. p2}, Ljava/io/ObjectStreamClass;->getLoadFields()[Ljava/io/ObjectStreamField;

    move-result-object v14

    .line 1084
    .local v14, fields:[Ljava/io/ObjectStreamField;
    if-nez v14, :cond_0

    sget-object v14, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    .line 1085
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v8

    .line 1086
    .local v8, declaringClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez v8, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/io/ObjectInputStream;->mustResolve:Z

    move/from16 v27, v0

    if-eqz v27, :cond_1

    .line 1087
    new-instance v27, Ljava/lang/ClassNotFoundException;

    invoke-virtual/range {p2 .. p2}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 1090
    :cond_1
    move-object v3, v14

    .local v3, arr$:[Ljava/io/ObjectStreamField;
    array-length v0, v3

    move/from16 v20, v0

    .local v20, len$:I
    const/16 v16, 0x0

    .local v16, i$:I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_d

    aget-object v11, v3, v16

    .line 1091
    .local v11, fieldDesc:Ljava/io/ObjectStreamField;
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/ObjectStreamClass;->getReflectionField(Ljava/io/ObjectStreamField;)Ljava/lang/reflect/Field;

    move-result-object v10

    .line 1095
    .local v10, field:Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {v11}, Ljava/io/ObjectStreamField;->getTypeInternal()Ljava/lang/Class;

    move-result-object v24

    .line 1096
    .local v24, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v27, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_3

    .line 1097
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    .line 1098
    .local v4, b:B
    if-eqz v10, :cond_2

    .line 1099
    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v4}, Ljava/lang/reflect/Field;->setByte(Ljava/lang/Object;B)V

    .line 1090
    .end local v4           #b:B
    .end local v24           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_2
    :goto_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 1101
    .restart local v24       #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_3
    sget-object v27, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_4

    .line 1102
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/io/DataInputStream;->readChar()C

    move-result v5

    .line 1103
    .local v5, c:C
    if-eqz v10, :cond_2

    .line 1104
    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v5}, Ljava/lang/reflect/Field;->setChar(Ljava/lang/Object;C)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 1155
    .end local v5           #c:C
    .end local v24           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v17

    .line 1157
    .local v17, iae:Ljava/lang/IllegalAccessException;
    new-instance v27, Ljava/lang/AssertionError;

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v27

    .line 1106
    .end local v17           #iae:Ljava/lang/IllegalAccessException;
    .restart local v24       #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_4
    :try_start_1
    sget-object v27, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_5

    .line 1107
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v6

    .line 1108
    .local v6, d:D
    if-eqz v10, :cond_2

    .line 1109
    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v6, v7}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V

    goto :goto_1

    .line 1158
    .end local v6           #d:D
    .end local v24           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_1
    move-exception v27

    goto :goto_1

    .line 1111
    .restart local v24       #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_5
    sget-object v27, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_6

    .line 1112
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/io/DataInputStream;->readFloat()F

    move-result v9

    .line 1113
    .local v9, f:F
    if-eqz v10, :cond_2

    .line 1114
    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v9}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    goto :goto_1

    .line 1116
    .end local v9           #f:F
    :cond_6
    sget-object v27, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_7

    .line 1117
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    .line 1118
    .local v15, i:I
    if-eqz v10, :cond_2

    .line 1119
    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v15}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    goto :goto_1

    .line 1121
    .end local v15           #i:I
    :cond_7
    sget-object v27, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_8

    .line 1122
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v18

    .line 1123
    .local v18, j:J
    if-eqz v10, :cond_2

    .line 1124
    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-virtual {v10, v0, v1, v2}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    goto/16 :goto_1

    .line 1126
    .end local v18           #j:J
    :cond_8
    sget-object v27, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_9

    .line 1127
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/io/DataInputStream;->readShort()S

    move-result v22

    .line 1128
    .local v22, s:S
    if-eqz v10, :cond_2

    .line 1129
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Ljava/lang/reflect/Field;->setShort(Ljava/lang/Object;S)V

    goto/16 :goto_1

    .line 1131
    .end local v22           #s:S
    :cond_9
    sget-object v27, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_a

    .line 1132
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v26

    .line 1133
    .local v26, z:Z
    if-eqz v10, :cond_2

    .line 1134
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v10, v0, v1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    goto/16 :goto_1

    .line 1137
    .end local v26           #z:Z
    :cond_a
    invoke-virtual {v11}, Ljava/io/ObjectStreamField;->isUnshared()Z

    move-result v27

    if-eqz v27, :cond_b

    invoke-virtual/range {p0 .. p0}, Ljava/io/ObjectInputStream;->readUnshared()Ljava/lang/Object;

    move-result-object v23

    .line 1138
    .local v23, toSet:Ljava/lang/Object;
    :goto_2
    if-eqz v23, :cond_2

    .line 1143
    invoke-virtual {v11}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v12

    .line 1144
    .local v12, fieldName:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/ObjectStreamClass;->getField(Ljava/lang/String;)Ljava/io/ObjectStreamField;

    move-result-object v21

    .line 1145
    .local v21, localFieldDesc:Ljava/io/ObjectStreamField;
    invoke-virtual/range {v21 .. v21}, Ljava/io/ObjectStreamField;->getTypeInternal()Ljava/lang/Class;

    move-result-object v13

    .line 1146
    .local v13, fieldType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v25

    .line 1147
    .local v25, valueType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v27

    if-nez v27, :cond_c

    .line 1148
    new-instance v27, Ljava/lang/ClassCastException;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "."

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " - "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " not compatible with "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 1137
    .end local v12           #fieldName:Ljava/lang/String;
    .end local v13           #fieldType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v21           #localFieldDesc:Ljava/io/ObjectStreamField;
    .end local v23           #toSet:Ljava/lang/Object;
    .end local v25           #valueType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_b
    invoke-virtual/range {p0 .. p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v23

    goto :goto_2

    .line 1150
    .restart local v12       #fieldName:Ljava/lang/String;
    .restart local v13       #fieldType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v21       #localFieldDesc:Ljava/io/ObjectStreamField;
    .restart local v23       #toSet:Ljava/lang/Object;
    .restart local v25       #valueType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_c
    if-eqz v10, :cond_2

    .line 1151
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 1161
    .end local v10           #field:Ljava/lang/reflect/Field;
    .end local v11           #fieldDesc:Ljava/io/ObjectStreamField;
    .end local v12           #fieldName:Ljava/lang/String;
    .end local v13           #fieldType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v21           #localFieldDesc:Ljava/io/ObjectStreamField;
    .end local v23           #toSet:Ljava/lang/Object;
    .end local v24           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v25           #valueType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_d
    return-void
.end method

.method private readHierarchy(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    .locals 12
    .parameter "object"
    .parameter "classDesc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/NotActiveException;
        }
    .end annotation

    .prologue
    .line 1242
    if-nez p1, :cond_0

    iget-boolean v10, p0, Ljava/io/ObjectInputStream;->mustResolve:Z

    if-eqz v10, :cond_0

    .line 1243
    new-instance v10, Ljava/io/NotActiveException;

    invoke-direct {v10}, Ljava/io/NotActiveException;-><init>()V

    throw v10

    .line 1246
    :cond_0
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getHierarchy()Ljava/util/List;

    move-result-object v7

    .line 1247
    .local v7, streamClassList:Ljava/util/List;,"Ljava/util/List<Ljava/io/ObjectStreamClass;>;"
    if-nez p1, :cond_1

    .line 1248
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/ObjectStreamClass;

    .line 1249
    .local v6, objectStreamClass:Ljava/io/ObjectStreamClass;
    const/4 v10, 0x0

    invoke-direct {p0, v10, v6}, Ljava/io/ObjectInputStream;->readObjectForClass(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    goto :goto_0

    .line 1252
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v6           #objectStreamClass:Ljava/io/ObjectStreamClass;
    :cond_1
    iget-object v10, p0, Ljava/io/ObjectInputStream;->cachedSuperclasses:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1253
    .local v9, superclasses:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Class<*>;>;"
    if-nez v9, :cond_2

    .line 1254
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-direct {p0, v10}, Ljava/io/ObjectInputStream;->cacheSuperclassesFor(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v9

    .line 1257
    :cond_2
    const/4 v5, 0x0

    .line 1258
    .local v5, lastIndex:I
    const/4 v1, 0x0

    .local v1, i:I
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    .local v0, end:I
    :goto_1
    if-ge v1, v0, :cond_5

    .line 1259
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Class;

    .line 1260
    .local v8, superclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0, v8, v7, v5}, Ljava/io/ObjectInputStream;->findStreamSuperclass(Ljava/lang/Class;Ljava/util/List;I)I

    move-result v3

    .line 1261
    .local v3, index:I
    const/4 v10, -0x1

    if-ne v3, v10, :cond_3

    .line 1262
    invoke-static {v8}, Ljava/io/ObjectStreamClass;->lookupStreamClass(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v10

    invoke-direct {p0, p1, v8, v10}, Ljava/io/ObjectInputStream;->readObjectNoData(Ljava/lang/Object;Ljava/lang/Class;Ljava/io/ObjectStreamClass;)V

    .line 1258
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1265
    :cond_3
    move v4, v5

    .local v4, j:I
    :goto_3
    if-gt v4, v3, :cond_4

    .line 1266
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/io/ObjectStreamClass;

    invoke-direct {p0, p1, v10}, Ljava/io/ObjectInputStream;->readObjectForClass(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    .line 1265
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1268
    :cond_4
    add-int/lit8 v5, v3, 0x1

    goto :goto_2

    .line 1272
    .end local v0           #end:I
    .end local v1           #i:I
    .end local v3           #index:I
    .end local v4           #j:I
    .end local v5           #lastIndex:I
    .end local v8           #superclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v9           #superclasses:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Class<*>;>;"
    :cond_5
    return-void
.end method

.method private readNewArray(Z)Ljava/lang/Object;
    .locals 22
    .parameter "unshared"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/OptionalDataException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1442
    invoke-direct/range {p0 .. p0}, Ljava/io/ObjectInputStream;->readClassDesc()Ljava/io/ObjectStreamClass;

    move-result-object v7

    .line 1444
    .local v7, classDesc:Ljava/io/ObjectStreamClass;
    if-nez v7, :cond_0

    .line 1445
    invoke-direct/range {p0 .. p0}, Ljava/io/ObjectInputStream;->missingClassDescriptor()Ljava/io/InvalidClassException;

    move-result-object v19

    throw v19

    .line 1448
    :cond_0
    invoke-direct/range {p0 .. p0}, Ljava/io/ObjectInputStream;->nextHandle()I

    move-result v14

    .line 1451
    .local v14, newHandle:I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readInt()I

    move-result v18

    .line 1452
    .local v18, size:I
    invoke-virtual {v7}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v3

    .line 1453
    .local v3, arrayClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v8

    .line 1454
    .local v8, componentType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    move/from16 v0, v18

    invoke-static {v8, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v16

    .line 1456
    .local v16, result:Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, p1

    invoke-direct {v0, v1, v14, v2}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;IZ)V

    .line 1462
    invoke-virtual {v8}, Ljava/lang/Class;->isPrimitive()Z

    move-result v19

    if-eqz v19, :cond_b

    .line 1463
    sget-object v19, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v19

    if-ne v8, v0, :cond_1

    move-object/from16 v19, v16

    .line 1464
    check-cast v19, [I

    move-object/from16 v12, v19

    check-cast v12, [I

    .line 1465
    .local v12, intArray:[I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    move/from16 v0, v18

    if-ge v11, v0, :cond_2

    .line 1466
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readInt()I

    move-result v19

    aput v19, v12, v11

    .line 1465
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1468
    .end local v11           #i:I
    .end local v12           #intArray:[I
    :cond_1
    sget-object v19, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v19

    if-ne v8, v0, :cond_4

    move-object/from16 v19, v16

    .line 1469
    check-cast v19, [B

    move-object/from16 v5, v19

    check-cast v5, [B

    .line 1470
    .local v5, byteArray:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v5, v1, v2}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 1515
    .end local v5           #byteArray:[B
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/io/ObjectInputStream;->enableResolve:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 1516
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/ObjectInputStream;->resolveObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 1517
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v19

    invoke-direct {v0, v1, v14, v2}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;IZ)V

    .line 1519
    :cond_3
    return-object v16

    .line 1471
    :cond_4
    sget-object v19, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v19

    if-ne v8, v0, :cond_5

    move-object/from16 v19, v16

    .line 1472
    check-cast v19, [C

    move-object/from16 v6, v19

    check-cast v6, [C

    .line 1473
    .local v6, charArray:[C
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_1
    move/from16 v0, v18

    if-ge v11, v0, :cond_2

    .line 1474
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readChar()C

    move-result v19

    aput-char v19, v6, v11

    .line 1473
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1476
    .end local v6           #charArray:[C
    .end local v11           #i:I
    :cond_5
    sget-object v19, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v19

    if-ne v8, v0, :cond_6

    move-object/from16 v19, v16

    .line 1477
    check-cast v19, [S

    move-object/from16 v17, v19

    check-cast v17, [S

    .line 1478
    .local v17, shortArray:[S
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_2
    move/from16 v0, v18

    if-ge v11, v0, :cond_2

    .line 1479
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readShort()S

    move-result v19

    aput-short v19, v17, v11

    .line 1478
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1481
    .end local v11           #i:I
    .end local v17           #shortArray:[S
    :cond_6
    sget-object v19, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v19

    if-ne v8, v0, :cond_7

    move-object/from16 v19, v16

    .line 1482
    check-cast v19, [Z

    move-object/from16 v4, v19

    check-cast v4, [Z

    .line 1483
    .local v4, booleanArray:[Z
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_3
    move/from16 v0, v18

    if-ge v11, v0, :cond_2

    .line 1484
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v19

    aput-boolean v19, v4, v11

    .line 1483
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1486
    .end local v4           #booleanArray:[Z
    .end local v11           #i:I
    :cond_7
    sget-object v19, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v19

    if-ne v8, v0, :cond_8

    move-object/from16 v19, v16

    .line 1487
    check-cast v19, [J

    move-object/from16 v13, v19

    check-cast v13, [J

    .line 1488
    .local v13, longArray:[J
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_4
    move/from16 v0, v18

    if-ge v11, v0, :cond_2

    .line 1489
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v19

    aput-wide v19, v13, v11

    .line 1488
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 1491
    .end local v11           #i:I
    .end local v13           #longArray:[J
    :cond_8
    sget-object v19, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v19

    if-ne v8, v0, :cond_9

    move-object/from16 v19, v16

    .line 1492
    check-cast v19, [F

    move-object/from16 v10, v19

    check-cast v10, [F

    .line 1493
    .local v10, floatArray:[F
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_5
    move/from16 v0, v18

    if-ge v11, v0, :cond_2

    .line 1494
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readFloat()F

    move-result v19

    aput v19, v10, v11

    .line 1493
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 1496
    .end local v10           #floatArray:[F
    .end local v11           #i:I
    :cond_9
    sget-object v19, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v19

    if-ne v8, v0, :cond_a

    move-object/from16 v19, v16

    .line 1497
    check-cast v19, [D

    move-object/from16 v9, v19

    check-cast v9, [D

    .line 1498
    .local v9, doubleArray:[D
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_6
    move/from16 v0, v18

    if-ge v11, v0, :cond_2

    .line 1499
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v19

    aput-wide v19, v9, v11

    .line 1498
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 1502
    .end local v9           #doubleArray:[D
    .end local v11           #i:I
    :cond_a
    new-instance v19, Ljava/lang/ClassNotFoundException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Wrong base type in "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v7}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v19

    :cond_b
    move-object/from16 v19, v16

    .line 1506
    check-cast v19, [Ljava/lang/Object;

    move-object/from16 v15, v19

    check-cast v15, [Ljava/lang/Object;

    .line 1507
    .local v15, objectArray:[Ljava/lang/Object;
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_7
    move/from16 v0, v18

    if-ge v11, v0, :cond_2

    .line 1512
    invoke-virtual/range {p0 .. p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v19

    aput-object v19, v15, v11

    .line 1507
    add-int/lit8 v11, v11, 0x1

    goto :goto_7
.end method

.method private readNewClass(Z)Ljava/lang/Class;
    .locals 3
    .parameter "unshared"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1536
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readClassDesc()Ljava/io/ObjectStreamClass;

    move-result-object v0

    .line 1537
    .local v0, classDesc:Ljava/io/ObjectStreamClass;
    if-nez v0, :cond_0

    .line 1538
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->missingClassDescriptor()Ljava/io/InvalidClassException;

    move-result-object v2

    throw v2

    .line 1540
    :cond_0
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v1

    .line 1541
    .local v1, localClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v1, :cond_1

    .line 1542
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextHandle()I

    move-result v2

    invoke-direct {p0, v1, v2, p1}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;IZ)V

    .line 1544
    :cond_1
    return-object v1
.end method

.method private readNewClassDesc(Z)Ljava/io/ObjectStreamClass;
    .locals 10
    .parameter "unshared"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1650
    iget-object v9, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    iput-object v9, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    .line 1651
    iget v8, p0, Ljava/io/ObjectInputStream;->descriptorHandle:I

    .line 1652
    .local v8, oldHandle:I
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextHandle()I

    move-result v9

    iput v9, p0, Ljava/io/ObjectInputStream;->descriptorHandle:I

    .line 1653
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readClassDescriptor()Ljava/io/ObjectStreamClass;

    move-result-object v7

    .line 1654
    .local v7, newClassDesc:Ljava/io/ObjectStreamClass;
    iget v9, p0, Ljava/io/ObjectInputStream;->descriptorHandle:I

    invoke-direct {p0, v7, v9, p1}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;IZ)V

    .line 1655
    iput v8, p0, Ljava/io/ObjectInputStream;->descriptorHandle:I

    .line 1656
    iget-object v9, p0, Ljava/io/ObjectInputStream;->emptyStream:Ljava/io/InputStream;

    iput-object v9, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    .line 1660
    :try_start_0
    invoke-virtual {p0, v7}, Ljava/io/ObjectInputStream;->resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/io/ObjectStreamClass;->setClass(Ljava/lang/Class;)V

    .line 1662
    invoke-direct {p0, v7}, Ljava/io/ObjectInputStream;->verifyAndInit(Ljava/io/ObjectStreamClass;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1672
    :cond_0
    invoke-virtual {v7}, Ljava/io/ObjectStreamClass;->getLoadFields()[Ljava/io/ObjectStreamField;

    move-result-object v3

    .line 1673
    .local v3, fields:[Ljava/io/ObjectStreamField;
    if-nez v3, :cond_1

    sget-object v3, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    .line 1674
    :cond_1
    invoke-virtual {v7}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v9

    if-nez v9, :cond_2

    iget-object v6, p0, Ljava/io/ObjectInputStream;->callerClassLoader:Ljava/lang/ClassLoader;

    .line 1676
    .local v6, loader:Ljava/lang/ClassLoader;
    :goto_0
    move-object v0, v3

    .local v0, arr$:[Ljava/io/ObjectStreamField;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v2, v0, v4

    .line 1677
    .local v2, element:Ljava/io/ObjectStreamField;
    invoke-virtual {v2, v6}, Ljava/io/ObjectStreamField;->resolve(Ljava/lang/ClassLoader;)V

    .line 1676
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1663
    .end local v0           #arr$:[Ljava/io/ObjectStreamField;
    .end local v2           #element:Ljava/io/ObjectStreamField;
    .end local v3           #fields:[Ljava/io/ObjectStreamField;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #loader:Ljava/lang/ClassLoader;
    :catch_0
    move-exception v1

    .line 1664
    .local v1, e:Ljava/lang/ClassNotFoundException;
    iget-boolean v9, p0, Ljava/io/ObjectInputStream;->mustResolve:Z

    if-eqz v9, :cond_0

    .line 1665
    throw v1

    .line 1674
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    .restart local v3       #fields:[Ljava/io/ObjectStreamField;
    :cond_2
    invoke-virtual {v7}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    goto :goto_0

    .line 1681
    .restart local v0       #arr$:[Ljava/io/ObjectStreamField;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    .restart local v6       #loader:Ljava/lang/ClassLoader;
    :cond_3
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->discardData()V

    .line 1682
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readClassDesc()Ljava/io/ObjectStreamClass;

    move-result-object v9

    invoke-static {v7, v9}, Ljava/io/ObjectInputStream;->checkedSetSuperClassDesc(Ljava/io/ObjectStreamClass;Ljava/io/ObjectStreamClass;)V

    .line 1683
    return-object v7
.end method

.method private readNewHandle()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1776
    iget-object v0, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    return v0
.end method

.method private readNewLongString(Z)Ljava/lang/Object;
    .locals 5
    .parameter "unshared"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1935
    iget-object v3, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    .line 1936
    .local v0, length:J
    iget-object v3, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    long-to-int v4, v0

    invoke-virtual {v3, v4}, Ljava/io/DataInputStream;->decodeUTF(I)Ljava/lang/String;

    move-result-object v2

    .line 1937
    .local v2, result:Ljava/lang/String;
    iget-boolean v3, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    if-eqz v3, :cond_0

    .line 1938
    invoke-virtual {p0, v2}, Ljava/io/ObjectInputStream;->resolveObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1940
    .end local v2           #result:Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextHandle()I

    move-result v3

    invoke-direct {p0, v2, v3, p1}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;IZ)V

    .line 1942
    return-object v2
.end method

.method private readNewObject(Z)Ljava/lang/Object;
    .locals 15
    .parameter "unshared"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/OptionalDataException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v12, 0x0

    const/4 v14, 0x0

    .line 1803
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readClassDesc()Ljava/io/ObjectStreamClass;

    move-result-object v2

    .line 1805
    .local v2, classDesc:Ljava/io/ObjectStreamClass;
    if-nez v2, :cond_0

    .line 1806
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->missingClassDescriptor()Ljava/io/InvalidClassException;

    move-result-object v12

    throw v12

    .line 1809
    :cond_0
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextHandle()I

    move-result v6

    .line 1810
    .local v6, newHandle:I
    invoke-virtual {v2}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v7

    .line 1811
    .local v7, objectClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v9, 0x0

    .line 1812
    .local v9, result:Ljava/lang/Object;
    const/4 v8, 0x0

    .line 1813
    .local v8, registeredResult:Ljava/lang/Object;
    if-eqz v7, :cond_6

    .line 1816
    invoke-virtual {v2, v7}, Ljava/io/ObjectStreamClass;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    .line 1817
    move/from16 v0, p1

    invoke-direct {p0, v9, v6, v0}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;IZ)V

    .line 1818
    move-object v8, v9

    .line 1828
    .end local v8           #registeredResult:Ljava/lang/Object;
    .end local v9           #result:Ljava/lang/Object;
    :goto_0
    :try_start_0
    iput-object v9, p0, Ljava/io/ObjectInputStream;->currentObject:Ljava/lang/Object;

    .line 1829
    iput-object v2, p0, Ljava/io/ObjectInputStream;->currentClass:Ljava/io/ObjectStreamClass;

    .line 1835
    invoke-virtual {v2}, Ljava/io/ObjectStreamClass;->getFlags()B

    move-result v13

    and-int/lit8 v13, v13, 0x4

    if-eqz v13, :cond_7

    move v11, v1

    .line 1836
    .local v11, wasExternalizable:Z
    :goto_1
    if-eqz v11, :cond_a

    .line 1837
    invoke-virtual {v2}, Ljava/io/ObjectStreamClass;->getFlags()B

    move-result v13

    and-int/lit8 v13, v13, 0x8

    if-eqz v13, :cond_8

    .line 1838
    .local v1, blockData:Z
    :goto_2
    if-nez v1, :cond_1

    .line 1839
    iget-object v12, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    iput-object v12, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    .line 1841
    :cond_1
    iget-boolean v12, p0, Ljava/io/ObjectInputStream;->mustResolve:Z

    if-eqz v12, :cond_2

    .line 1842
    move-object v0, v9

    check-cast v0, Ljava/io/Externalizable;

    move-object v3, v0

    .line 1843
    .local v3, extern:Ljava/io/Externalizable;
    invoke-interface {v3, p0}, Ljava/io/Externalizable;->readExternal(Ljava/io/ObjectInput;)V

    .line 1845
    .end local v3           #extern:Ljava/io/Externalizable;
    :cond_2
    if-eqz v1, :cond_9

    .line 1848
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->discardData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1860
    .end local v1           #blockData:Z
    :goto_3
    iput-object v14, p0, Ljava/io/ObjectInputStream;->currentObject:Ljava/lang/Object;

    .line 1861
    iput-object v14, p0, Ljava/io/ObjectInputStream;->currentClass:Ljava/io/ObjectStreamClass;

    .line 1864
    if-eqz v7, :cond_3

    .line 1866
    invoke-virtual {v2}, Ljava/io/ObjectStreamClass;->hasMethodReadResolve()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1867
    invoke-virtual {v2}, Ljava/io/ObjectStreamClass;->getMethodReadResolve()Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1869
    .local v5, methodReadResolve:Ljava/lang/reflect/Method;
    const/4 v12, 0x0

    :try_start_1
    check-cast v12, [Ljava/lang/Object;

    invoke-virtual {v5, v9, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    .line 1890
    .end local v5           #methodReadResolve:Ljava/lang/reflect/Method;
    :cond_3
    :goto_4
    if-eqz v9, :cond_4

    iget-boolean v12, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    if-eqz v12, :cond_4

    .line 1891
    invoke-virtual {p0, v9}, Ljava/io/ObjectInputStream;->resolveObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 1893
    :cond_4
    if-eq v8, v9, :cond_5

    .line 1894
    move/from16 v0, p1

    invoke-direct {p0, v9, v6, v0}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;IZ)V

    .line 1896
    :cond_5
    return-object v9

    .line 1820
    .end local v11           #wasExternalizable:Z
    .restart local v8       #registeredResult:Ljava/lang/Object;
    .restart local v9       #result:Ljava/lang/Object;
    :cond_6
    const/4 v9, 0x0

    goto :goto_0

    .end local v8           #registeredResult:Ljava/lang/Object;
    .end local v9           #result:Ljava/lang/Object;
    :cond_7
    move v11, v12

    .line 1835
    goto :goto_1

    .restart local v11       #wasExternalizable:Z
    :cond_8
    move v1, v12

    .line 1837
    goto :goto_2

    .line 1850
    .restart local v1       #blockData:Z
    :cond_9
    :try_start_2
    iget-object v12, p0, Ljava/io/ObjectInputStream;->emptyStream:Ljava/io/InputStream;

    iput-object v12, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 1860
    .end local v1           #blockData:Z
    .end local v11           #wasExternalizable:Z
    :catchall_0
    move-exception v12

    iput-object v14, p0, Ljava/io/ObjectInputStream;->currentObject:Ljava/lang/Object;

    .line 1861
    iput-object v14, p0, Ljava/io/ObjectInputStream;->currentClass:Ljava/io/ObjectStreamClass;

    throw v12

    .line 1855
    .restart local v11       #wasExternalizable:Z
    :cond_a
    :try_start_3
    invoke-direct {p0, v9, v2}, Ljava/io/ObjectInputStream;->readHierarchy(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 1871
    .restart local v5       #methodReadResolve:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v4

    .line 1872
    .local v4, ite:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v10

    .line 1873
    .local v10, target:Ljava/lang/Throwable;
    instance-of v12, v10, Ljava/io/ObjectStreamException;

    if-eqz v12, :cond_b

    .line 1874
    check-cast v10, Ljava/io/ObjectStreamException;

    .end local v10           #target:Ljava/lang/Throwable;
    throw v10

    .line 1875
    .restart local v10       #target:Ljava/lang/Throwable;
    :cond_b
    instance-of v12, v10, Ljava/lang/Error;

    if-eqz v12, :cond_c

    .line 1876
    check-cast v10, Ljava/lang/Error;

    .end local v10           #target:Ljava/lang/Throwable;
    throw v10

    .line 1878
    .restart local v10       #target:Ljava/lang/Throwable;
    :cond_c
    check-cast v10, Ljava/lang/RuntimeException;

    .end local v10           #target:Ljava/lang/Throwable;
    throw v10

    .line 1870
    .end local v4           #ite:Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v12

    goto :goto_4
.end method

.method private readNewProxyClassDesc()Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1701
    iget-object v4, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 1702
    .local v0, count:I
    new-array v2, v0, [Ljava/lang/String;

    .line 1703
    .local v2, interfaceNames:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1704
    iget-object v4, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 1703
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1706
    :cond_0
    invoke-virtual {p0, v2}, Ljava/io/ObjectInputStream;->resolveProxyClass([Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 1708
    .local v3, proxy:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->discardData()V

    .line 1709
    return-object v3
.end method

.method private readNewString(Z)Ljava/lang/Object;
    .locals 2
    .parameter "unshared"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1914
    iget-object v1, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 1915
    .local v0, result:Ljava/lang/String;
    iget-boolean v1, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    if-eqz v1, :cond_0

    .line 1916
    invoke-virtual {p0, v0}, Ljava/io/ObjectInputStream;->resolveObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1918
    .end local v0           #result:Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextHandle()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;IZ)V

    .line 1920
    return-object v0
.end method

.method private readNonPrimitiveContent(Z)Ljava/lang/Object;
    .locals 5
    .parameter "unshared"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 770
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->checkReadPrimitiveTypes()V

    .line 771
    iget-object v3, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v3

    if-lez v3, :cond_0

    .line 772
    new-instance v0, Ljava/io/OptionalDataException;

    invoke-direct {v0}, Ljava/io/OptionalDataException;-><init>()V

    .line 773
    .local v0, e:Ljava/io/OptionalDataException;
    iget-object v3, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v3

    iput v3, v0, Ljava/io/OptionalDataException;->length:I

    .line 774
    throw v0

    .line 806
    .end local v0           #e:Ljava/io/OptionalDataException;
    .local v2, tc:B
    :pswitch_0
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->resetState()V

    .line 778
    .end local v2           #tc:B
    :cond_0
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextTC()B

    move-result v2

    .line 779
    .restart local v2       #tc:B
    packed-switch v2, :pswitch_data_0

    .line 814
    :pswitch_1
    invoke-direct {p0, v2}, Ljava/io/ObjectInputStream;->corruptStream(B)Ljava/io/StreamCorruptedException;

    move-result-object v3

    throw v3

    .line 781
    :pswitch_2
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readNewClass(Z)Ljava/lang/Class;

    move-result-object v3

    .line 801
    :goto_0
    return-object v3

    .line 783
    :pswitch_3
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readNewClassDesc(Z)Ljava/io/ObjectStreamClass;

    move-result-object v3

    goto :goto_0

    .line 785
    :pswitch_4
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readNewArray(Z)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 787
    :pswitch_5
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readNewObject(Z)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 789
    :pswitch_6
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readNewString(Z)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 791
    :pswitch_7
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readNewLongString(Z)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 793
    :pswitch_8
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readEnum(Z)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 795
    :pswitch_9
    if-eqz p1, :cond_1

    .line 796
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readNewHandle()I

    .line 797
    new-instance v3, Ljava/io/InvalidObjectException;

    const-string v4, "Unshared read of back reference"

    invoke-direct {v3, v4}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 799
    :cond_1
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readCyclicReference()Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 801
    :pswitch_a
    const/4 v3, 0x0

    goto :goto_0

    .line 803
    :pswitch_b
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->readException()Ljava/lang/Exception;

    move-result-object v1

    .line 804
    .local v1, exc:Ljava/lang/Exception;
    new-instance v3, Ljava/io/WriteAbortedException;

    const-string v4, "Read an exception"

    invoke-direct {v3, v4, v1}, Ljava/io/WriteAbortedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 809
    .end local v1           #exc:Ljava/lang/Exception;
    :pswitch_c
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->pushbackTC()V

    .line 810
    new-instance v0, Ljava/io/OptionalDataException;

    invoke-direct {v0}, Ljava/io/OptionalDataException;-><init>()V

    .line 811
    .restart local v0       #e:Ljava/io/OptionalDataException;
    const/4 v3, 0x1

    iput-boolean v3, v0, Ljava/io/OptionalDataException;->eof:Z

    .line 812
    throw v0

    .line 779
    nop

    :pswitch_data_0
    .packed-switch 0x70
        :pswitch_a
        :pswitch_9
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_c
        :pswitch_0
        :pswitch_1
        :pswitch_b
        :pswitch_7
        :pswitch_1
        :pswitch_8
    .end packed-switch
.end method

.method private readObject(Z)Ljava/lang/Object;
    .locals 10
    .parameter "unshared"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/OptionalDataException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v9, 0x0

    .line 1980
    iget-object v7, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    iget-object v8, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    if-ne v7, v8, :cond_2

    move v4, v6

    .line 1981
    .local v4, restoreInput:Z
    :goto_0
    if-eqz v4, :cond_0

    .line 1982
    iget-object v7, p0, Ljava/io/ObjectInputStream;->emptyStream:Ljava/io/InputStream;

    iput-object v7, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    .line 1987
    :cond_0
    iget-boolean v7, p0, Ljava/io/ObjectInputStream;->subclassOverridingImplementation:Z

    if-eqz v7, :cond_3

    if-nez p1, :cond_3

    .line 1988
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObjectOverride()Ljava/lang/Object;

    move-result-object v5

    .line 2034
    :cond_1
    :goto_1
    return-object v5

    .line 1980
    .end local v4           #restoreInput:Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 1998
    .restart local v4       #restoreInput:Z
    :cond_3
    :try_start_0
    iget v7, p0, Ljava/io/ObjectInputStream;->nestedLevels:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Ljava/io/ObjectInputStream;->nestedLevels:I

    if-ne v7, v6, :cond_4

    .line 2000
    invoke-static {}, Ljava/io/ObjectInputStream;->getClosestUserClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    iput-object v6, p0, Ljava/io/ObjectInputStream;->callerClassLoader:Ljava/lang/ClassLoader;

    .line 2003
    :cond_4
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;->readNonPrimitiveContent(Z)Ljava/lang/Object;

    move-result-object v5

    .line 2004
    .local v5, result:Ljava/lang/Object;
    if-eqz v4, :cond_5

    .line 2005
    iget-object v6, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    iput-object v6, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2010
    :cond_5
    iget v6, p0, Ljava/io/ObjectInputStream;->nestedLevels:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Ljava/io/ObjectInputStream;->nestedLevels:I

    if-nez v6, :cond_6

    .line 2014
    iput-object v9, p0, Ljava/io/ObjectInputStream;->callerClassLoader:Ljava/lang/ClassLoader;

    .line 2020
    :cond_6
    iget v6, p0, Ljava/io/ObjectInputStream;->nestedLevels:I

    if-nez v6, :cond_1

    iget-object v6, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    if-eqz v6, :cond_1

    .line 2025
    :try_start_1
    iget-object v0, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    .local v0, arr$:[Ljava/io/ObjectInputStream$InputValidationDesc;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_2
    if-ge v2, v3, :cond_8

    aget-object v1, v0, v2

    .line 2026
    .local v1, element:Ljava/io/ObjectInputStream$InputValidationDesc;
    iget-object v6, v1, Ljava/io/ObjectInputStream$InputValidationDesc;->validator:Ljava/io/ObjectInputValidation;

    invoke-interface {v6}, Ljava/io/ObjectInputValidation;->validateObject()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2025
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2010
    .end local v0           #arr$:[Ljava/io/ObjectInputStream$InputValidationDesc;
    .end local v1           #element:Ljava/io/ObjectInputStream$InputValidationDesc;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #result:Ljava/lang/Object;
    :catchall_0
    move-exception v6

    iget v7, p0, Ljava/io/ObjectInputStream;->nestedLevels:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Ljava/io/ObjectInputStream;->nestedLevels:I

    if-nez v7, :cond_7

    .line 2014
    iput-object v9, p0, Ljava/io/ObjectInputStream;->callerClassLoader:Ljava/lang/ClassLoader;

    :cond_7
    throw v6

    .line 2031
    .restart local v0       #arr$:[Ljava/io/ObjectInputStream$InputValidationDesc;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v5       #result:Ljava/lang/Object;
    :cond_8
    iput-object v9, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    goto :goto_1

    .end local v0           #arr$:[Ljava/io/ObjectInputStream$InputValidationDesc;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :catchall_1
    move-exception v6

    iput-object v9, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    throw v6
.end method

.method private readObjectForClass(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    .locals 8
    .parameter "object"
    .parameter "classDesc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/NotActiveException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 1337
    iput-object p1, p0, Ljava/io/ObjectInputStream;->currentObject:Ljava/lang/Object;

    .line 1338
    iput-object p2, p0, Ljava/io/ObjectInputStream;->currentClass:Ljava/io/ObjectStreamClass;

    .line 1340
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getFlags()B

    move-result v6

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    .line 1341
    .local v2, hadWriteMethod:Z
    :goto_0
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v4

    .line 1344
    .local v4, targetClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v4, :cond_0

    iget-boolean v5, p0, Ljava/io/ObjectInputStream;->mustResolve:Z

    if-nez v5, :cond_3

    .line 1345
    :cond_0
    const/4 v3, 0x0

    .line 1350
    .local v3, readMethod:Ljava/lang/reflect/Method;
    :goto_1
    if-eqz v3, :cond_7

    .line 1352
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v3, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1354
    const/4 v5, 0x1

    :try_start_1
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v3, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1371
    :goto_2
    if-eqz v2, :cond_1

    .line 1372
    :try_start_2
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->discardData()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1377
    :cond_1
    iput-object v7, p0, Ljava/io/ObjectInputStream;->currentObject:Ljava/lang/Object;

    .line 1379
    iput-object v7, p0, Ljava/io/ObjectInputStream;->currentClass:Ljava/io/ObjectStreamClass;

    .line 1381
    return-void

    .end local v2           #hadWriteMethod:Z
    .end local v3           #readMethod:Ljava/lang/reflect/Method;
    .end local v4           #targetClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_2
    move v2, v5

    .line 1340
    goto :goto_0

    .line 1347
    .restart local v2       #hadWriteMethod:Z
    .restart local v4       #targetClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_3
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getMethodReadObject()Ljava/lang/reflect/Method;

    move-result-object v3

    .restart local v3       #readMethod:Ljava/lang/reflect/Method;
    goto :goto_1

    .line 1355
    :catch_0
    move-exception v0

    .line 1356
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    .line 1357
    .local v1, ex:Ljava/lang/Throwable;
    instance-of v5, v1, Ljava/lang/ClassNotFoundException;

    if-eqz v5, :cond_4

    .line 1358
    check-cast v1, Ljava/lang/ClassNotFoundException;

    .end local v1           #ex:Ljava/lang/Throwable;
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1377
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catchall_0
    move-exception v5

    iput-object v7, p0, Ljava/io/ObjectInputStream;->currentObject:Ljava/lang/Object;

    .line 1379
    iput-object v7, p0, Ljava/io/ObjectInputStream;->currentClass:Ljava/io/ObjectStreamClass;

    throw v5

    .line 1359
    .restart local v0       #e:Ljava/lang/reflect/InvocationTargetException;
    .restart local v1       #ex:Ljava/lang/Throwable;
    :cond_4
    :try_start_4
    instance-of v5, v1, Ljava/lang/RuntimeException;

    if-eqz v5, :cond_5

    .line 1360
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1           #ex:Ljava/lang/Throwable;
    throw v1

    .line 1361
    .restart local v1       #ex:Ljava/lang/Throwable;
    :cond_5
    instance-of v5, v1, Ljava/lang/Error;

    if-eqz v5, :cond_6

    .line 1362
    check-cast v1, Ljava/lang/Error;

    .end local v1           #ex:Ljava/lang/Throwable;
    throw v1

    .line 1364
    .restart local v1       #ex:Ljava/lang/Throwable;
    :cond_6
    check-cast v1, Ljava/io/IOException;

    .end local v1           #ex:Ljava/lang/Throwable;
    throw v1

    .line 1365
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 1366
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1369
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :cond_7
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->defaultReadObject()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method private readObjectNoData(Ljava/lang/Object;Ljava/lang/Class;Ljava/io/ObjectStreamClass;)V
    .locals 5
    .parameter "object"
    .parameter
    .parameter "classDesc"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/io/ObjectStreamClass;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 1311
    .local p2, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p3}, Ljava/io/ObjectStreamClass;->isSerializable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1331
    :cond_0
    :goto_0
    return-void

    .line 1314
    :cond_1
    invoke-virtual {p3}, Ljava/io/ObjectStreamClass;->hasMethodReadObjectNoData()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1315
    invoke-virtual {p3}, Ljava/io/ObjectStreamClass;->getMethodReadObjectNoData()Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1317
    .local v2, readMethod:Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1318
    :catch_0
    move-exception v0

    .line 1319
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    .line 1320
    .local v1, ex:Ljava/lang/Throwable;
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_2

    .line 1321
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1           #ex:Ljava/lang/Throwable;
    throw v1

    .line 1322
    .restart local v1       #ex:Ljava/lang/Throwable;
    :cond_2
    instance-of v3, v1, Ljava/lang/Error;

    if-eqz v3, :cond_3

    .line 1323
    check-cast v1, Ljava/lang/Error;

    .end local v1           #ex:Ljava/lang/Throwable;
    throw v1

    .line 1325
    .restart local v1       #ex:Ljava/lang/Throwable;
    :cond_3
    check-cast v1, Ljava/io/ObjectStreamException;

    .end local v1           #ex:Ljava/lang/Throwable;
    throw v1

    .line 1326
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 1327
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private registerObjectRead(Ljava/lang/Object;IZ)V
    .locals 4
    .parameter "obj"
    .parameter "handle"
    .parameter "unshared"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2172
    if-eqz p3, :cond_0

    .line 2173
    sget-object p1, Ljava/io/ObjectInputStream;->UNSHARED_OBJ:Ljava/lang/Object;

    .line 2175
    :cond_0
    const/high16 v2, 0x7e

    sub-int v0, p2, v2

    .line 2176
    .local v0, index:I
    iget-object v2, p0, Ljava/io/ObjectInputStream;->objectsRead:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2180
    .local v1, size:I
    :goto_0
    if-le v0, v1, :cond_1

    .line 2181
    iget-object v2, p0, Ljava/io/ObjectInputStream;->objectsRead:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2182
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2184
    :cond_1
    if-ne v0, v1, :cond_2

    .line 2185
    iget-object v2, p0, Ljava/io/ObjectInputStream;->objectsRead:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2189
    :goto_1
    return-void

    .line 2187
    :cond_2
    iget-object v2, p0, Ljava/io/ObjectInputStream;->objectsRead:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private registeredObjectRead(I)Ljava/lang/Object;
    .locals 3
    .parameter "handle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .prologue
    .line 2161
    iget-object v1, p0, Ljava/io/ObjectInputStream;->objectsRead:Ljava/util/ArrayList;

    const/high16 v2, 0x7e

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 2162
    .local v0, res:Ljava/lang/Object;
    sget-object v1, Ljava/io/ObjectInputStream;->UNSHARED_OBJ:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 2163
    new-instance v1, Ljava/io/InvalidObjectException;

    const-string v2, "Cannot read back reference to unshared object"

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2165
    :cond_0
    return-object v0
.end method

.method private resetSeenObjects()V
    .locals 1

    .prologue
    .line 2256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/io/ObjectInputStream;->objectsRead:Ljava/util/ArrayList;

    .line 2257
    const/high16 v0, 0x7e

    iput v0, p0, Ljava/io/ObjectInputStream;->nextHandle:I

    .line 2258
    iget-object v0, p0, Ljava/io/ObjectInputStream;->emptyStream:Ljava/io/InputStream;

    iput-object v0, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    .line 2259
    return-void
.end method

.method private resetState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2267
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->resetSeenObjects()V

    .line 2268
    iput-boolean v0, p0, Ljava/io/ObjectInputStream;->hasPushbackTC:Z

    .line 2269
    iput-byte v0, p0, Ljava/io/ObjectInputStream;->pushbackTC:B

    .line 2271
    return-void
.end method

.method private verifyAndInit(Ljava/io/ObjectStreamClass;)V
    .locals 9
    .parameter "loadedStreamClass"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    .prologue
    .line 2374
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v1

    .line 2375
    .local v1, localClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v1}, Ljava/io/ObjectStreamClass;->lookupStreamClass(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v3

    .line 2378
    .local v3, localStreamClass:Ljava/io/ObjectStreamClass;
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 2380
    new-instance v4, Ljava/io/InvalidClassException;

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Incompatible class (SUID): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " but expected "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 2385
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/io/ObjectInputStream;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2386
    .local v0, loadedClassBaseName:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/io/ObjectInputStream;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2388
    .local v2, localClassBaseName:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2389
    new-instance v4, Ljava/io/InvalidClassException;

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Incompatible class (base name): %s but expected %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 2394
    :cond_1
    invoke-virtual {p1, v3}, Ljava/io/ObjectStreamClass;->initPrivateFields(Ljava/io/ObjectStreamClass;)V

    .line 2395
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 379
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->checkReadPrimitiveTypes()V

    .line 380
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 436
    iget-object v0, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/FilterInputStream;->close()V

    .line 437
    return-void
.end method

.method public defaultReadObject()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/NotActiveException;
        }
    .end annotation

    .prologue
    .line 454
    iget-object v0, p0, Ljava/io/ObjectInputStream;->currentObject:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ljava/io/ObjectInputStream;->mustResolve:Z

    if-nez v0, :cond_1

    .line 455
    :cond_0
    iget-object v0, p0, Ljava/io/ObjectInputStream;->currentObject:Ljava/lang/Object;

    iget-object v1, p0, Ljava/io/ObjectInputStream;->currentClass:Ljava/io/ObjectStreamClass;

    invoke-direct {p0, v0, v1}, Ljava/io/ObjectInputStream;->readFieldValues(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    .line 459
    return-void

    .line 457
    :cond_1
    new-instance v0, Ljava/io/NotActiveException;

    invoke-direct {v0}, Ljava/io/NotActiveException;-><init>()V

    throw v0
.end method

.method protected enableResolveObject(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 474
    iget-boolean v0, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    .line 475
    .local v0, originalValue:Z
    iput-boolean p1, p0, Ljava/io/ObjectInputStream;->enableResolve:Z

    .line 476
    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 530
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->checkReadPrimitiveTypes()V

    .line 531
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 560
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 561
    if-nez p3, :cond_0

    .line 562
    const/4 v0, 0x0

    .line 565
    :goto_0
    return v0

    .line 564
    :cond_0
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->checkReadPrimitiveTypes()V

    .line 565
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    goto :goto_0
.end method

.method public readBoolean()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 611
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    return v0
.end method

.method public readByte()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 625
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    return v0
.end method

.method public readChar()C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 639
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readChar()C

    move-result v0

    return v0
.end method

.method protected readClassDescriptor()Ljava/io/ObjectStreamClass;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1722
    new-instance v1, Ljava/io/ObjectStreamClass;

    invoke-direct {v1}, Ljava/io/ObjectStreamClass;-><init>()V

    .line 1723
    .local v1, newClassDesc:Ljava/io/ObjectStreamClass;
    iget-object v2, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 1724
    .local v0, name:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 1725
    new-instance v2, Ljava/io/IOException;

    const-string v3, "The stream is corrupted"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1727
    :cond_0
    invoke-virtual {v1, v0}, Ljava/io/ObjectStreamClass;->setName(Ljava/lang/String;)V

    .line 1728
    iget-object v2, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectStreamClass;->setSerialVersionUID(J)V

    .line 1729
    iget-object v2, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/ObjectStreamClass;->setFlags(B)V

    .line 1736
    iget v2, p0, Ljava/io/ObjectInputStream;->descriptorHandle:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 1737
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->nextHandle()I

    move-result v2

    iput v2, p0, Ljava/io/ObjectInputStream;->descriptorHandle:I

    .line 1739
    :cond_1
    iget v2, p0, Ljava/io/ObjectInputStream;->descriptorHandle:I

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Ljava/io/ObjectInputStream;->registerObjectRead(Ljava/lang/Object;IZ)V

    .line 1741
    invoke-direct {p0, v1}, Ljava/io/ObjectInputStream;->readFieldDescriptors(Ljava/io/ObjectStreamClass;)V

    .line 1742
    return-object v1
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 847
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public readFields()Ljava/io/ObjectInputStream$GetField;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/NotActiveException;
        }
    .end annotation

    .prologue
    .line 990
    iget-object v1, p0, Ljava/io/ObjectInputStream;->currentObject:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 991
    new-instance v1, Ljava/io/NotActiveException;

    invoke-direct {v1}, Ljava/io/NotActiveException;-><init>()V

    throw v1

    .line 993
    :cond_0
    new-instance v0, Ljava/io/EmulatedFieldsForLoading;

    iget-object v1, p0, Ljava/io/ObjectInputStream;->currentClass:Ljava/io/ObjectStreamClass;

    invoke-direct {v0, v1}, Ljava/io/EmulatedFieldsForLoading;-><init>(Ljava/io/ObjectStreamClass;)V

    .line 994
    .local v0, result:Ljava/io/EmulatedFieldsForLoading;
    invoke-direct {p0, v0}, Ljava/io/ObjectInputStream;->readFieldValues(Ljava/io/EmulatedFieldsForLoading;)V

    .line 995
    return-object v0
.end method

.method public readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1174
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    return v0
.end method

.method public readFully([B)V
    .locals 1
    .parameter "dst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1190
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 1191
    return-void
.end method

.method public readFully([BII)V
    .locals 1
    .parameter "dst"
    .parameter "offset"
    .parameter "byteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1210
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 1211
    return-void
.end method

.method public readInt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1394
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    return v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1408
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readLong()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1422
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public final readObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/OptionalDataException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1960
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/io/ObjectInputStream;->readObject(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected readObjectOverride()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/OptionalDataException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2073
    iget-object v0, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    if-nez v0, :cond_0

    .line 2074
    const/4 v0, 0x0

    return-object v0

    .line 2077
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public readShort()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2088
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    return v0
.end method

.method protected readStreamHeader()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/StreamCorruptedException;
        }
    .end annotation

    .prologue
    .line 2102
    iget-object v0, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    const/16 v1, -0x5313

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2104
    return-void

    .line 2106
    :cond_0
    new-instance v0, Ljava/io/StreamCorruptedException;

    invoke-direct {v0}, Ljava/io/StreamCorruptedException;-><init>()V

    throw v0
.end method

.method public readUTF()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2152
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUnshared()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1975
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/io/ObjectInputStream;->readObject(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readUnsignedByte()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2121
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    return v0
.end method

.method public readUnsignedShort()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2136
    iget-object v0, p0, Ljava/io/ObjectInputStream;->primitiveTypes:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    return v0
.end method

.method public declared-synchronized registerValidation(Ljava/io/ObjectInputValidation;I)V
    .locals 9
    .parameter "object"
    .parameter "priority"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/NotActiveException;,
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .prologue
    .line 2214
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Ljava/io/ObjectInputStream;->currentObject:Ljava/lang/Object;

    .line 2216
    .local v3, instanceBeingRead:Ljava/lang/Object;
    if-nez v3, :cond_0

    iget v6, p0, Ljava/io/ObjectInputStream;->nestedLevels:I

    if-nez v6, :cond_0

    .line 2217
    new-instance v6, Ljava/io/NotActiveException;

    invoke-direct {v6}, Ljava/io/NotActiveException;-><init>()V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2214
    .end local v3           #instanceBeingRead:Ljava/lang/Object;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 2219
    .restart local v3       #instanceBeingRead:Ljava/lang/Object;
    :cond_0
    if-nez p1, :cond_1

    .line 2220
    :try_start_1
    new-instance v6, Ljava/io/InvalidObjectException;

    const-string v7, "Callback object cannot be null"

    invoke-direct {v6, v7}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2225
    :cond_1
    new-instance v1, Ljava/io/ObjectInputStream$InputValidationDesc;

    invoke-direct {v1}, Ljava/io/ObjectInputStream$InputValidationDesc;-><init>()V

    .line 2226
    .local v1, desc:Ljava/io/ObjectInputStream$InputValidationDesc;
    iput-object p1, v1, Ljava/io/ObjectInputStream$InputValidationDesc;->validator:Ljava/io/ObjectInputValidation;

    .line 2227
    iput p2, v1, Ljava/io/ObjectInputStream$InputValidationDesc;->priority:I

    .line 2230
    iget-object v6, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    if-nez v6, :cond_2

    .line 2231
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/io/ObjectInputStream$InputValidationDesc;

    iput-object v6, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    .line 2232
    iget-object v6, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    const/4 v7, 0x0

    aput-object v1, v6, v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2250
    :goto_0
    monitor-exit p0

    return-void

    .line 2234
    :cond_2
    const/4 v2, 0x0

    .line 2235
    .local v2, i:I
    :goto_1
    :try_start_2
    iget-object v6, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    array-length v6, v6

    if-ge v2, v6, :cond_3

    .line 2236
    iget-object v6, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    aget-object v5, v6, v2

    .line 2238
    .local v5, validation:Ljava/io/ObjectInputStream$InputValidationDesc;
    iget v6, v5, Ljava/io/ObjectInputStream$InputValidationDesc;->priority:I

    if-lt p2, v6, :cond_4

    .line 2242
    .end local v5           #validation:Ljava/io/ObjectInputStream$InputValidationDesc;
    :cond_3
    iget-object v4, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    .line 2243
    .local v4, oldValidations:[Ljava/io/ObjectInputStream$InputValidationDesc;
    array-length v0, v4

    .line 2244
    .local v0, currentSize:I
    add-int/lit8 v6, v0, 0x1

    new-array v6, v6, [Ljava/io/ObjectInputStream$InputValidationDesc;

    iput-object v6, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    .line 2245
    const/4 v6, 0x0

    iget-object v7, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    const/4 v8, 0x0

    invoke-static {v4, v6, v7, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2246
    iget-object v6, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    add-int/lit8 v7, v2, 0x1

    sub-int v8, v0, v2

    invoke-static {v4, v2, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2248
    iget-object v6, p0, Ljava/io/ObjectInputStream;->validations:[Ljava/io/ObjectInputStream$InputValidationDesc;

    aput-object v1, v6, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2235
    .end local v0           #currentSize:I
    .end local v4           #oldValidations:[Ljava/io/ObjectInputStream$InputValidationDesc;
    .restart local v5       #validation:Ljava/io/ObjectInputStream$InputValidationDesc;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method protected resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;
    .locals 4
    .parameter "osClass"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectStreamClass;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 2289
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v1

    .line 2290
    .local v1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez v1, :cond_0

    .line 2292
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2295
    .local v0, className:Ljava/lang/String;
    sget-object v2, Ljava/io/ObjectInputStream;->PRIMITIVE_CLASSES:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    check-cast v1, Ljava/lang/Class;

    .line 2297
    .restart local v1       #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez v1, :cond_0

    .line 2301
    const/4 v2, 0x1

    iget-object v3, p0, Ljava/io/ObjectInputStream;->callerClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v0, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 2304
    .end local v0           #className:Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method protected resolveObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2325
    return-object p1
.end method

.method protected resolveProxyClass([Ljava/lang/String;)Ljava/lang/Class;
    .locals 6
    .parameter "interfaceNames"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1763
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 1764
    .local v3, loader:Ljava/lang/ClassLoader;
    array-length v4, p1

    new-array v2, v4, [Ljava/lang/Class;

    .line 1765
    .local v2, interfaces:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_0

    .line 1766
    aget-object v4, p1, v1

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v1

    .line 1765
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1769
    :cond_0
    :try_start_0
    invoke-static {v3, v2}, Ljava/lang/reflect/Proxy;->getProxyClass(Ljava/lang/ClassLoader;[Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 1770
    :catch_0
    move-exception v0

    .line 1771
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/lang/ClassNotFoundException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public skipBytes(I)I
    .locals 6
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2343
    iget-object v3, p0, Ljava/io/ObjectInputStream;->input:Ljava/io/DataInputStream;

    if-nez v3, :cond_0

    .line 2344
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 2347
    :cond_0
    const/4 v0, 0x0

    .line 2348
    .local v0, offset:I
    :goto_0
    if-ge v0, p1, :cond_2

    .line 2349
    invoke-direct {p0}, Ljava/io/ObjectInputStream;->checkReadPrimitiveTypes()V

    .line 2350
    iget-object v3, p0, Ljava/io/ObjectInputStream;->primitiveData:Ljava/io/InputStream;

    sub-int v4, p1, v0

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v1

    .line 2351
    .local v1, skipped:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_1

    .line 2356
    .end local v0           #offset:I
    .end local v1           #skipped:J
    :goto_1
    return v0

    .line 2354
    .restart local v0       #offset:I
    .restart local v1       #skipped:J
    :cond_1
    long-to-int v3, v1

    add-int/2addr v0, v3

    .line 2355
    goto :goto_0

    .end local v1           #skipped:J
    :cond_2
    move v0, p1

    .line 2356
    goto :goto_1
.end method
