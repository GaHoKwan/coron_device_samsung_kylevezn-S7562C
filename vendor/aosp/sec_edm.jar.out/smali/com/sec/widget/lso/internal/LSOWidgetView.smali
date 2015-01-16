.class public Lcom/sec/widget/lso/internal/LSOWidgetView;
.super Ljava/lang/Object;
.source "LSOWidgetView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LSO"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWidget(Landroid/content/Context;Landroid/app/enterprise/lso/LSOItemWidget;)Landroid/view/View;
    .locals 18
    .parameter "context"
    .parameter "lsoWidget"

    .prologue
    .line 57
    invoke-virtual/range {p1 .. p1}, Landroid/app/enterprise/lso/LSOItemWidget;->getWidget()Ljava/lang/String;

    move-result-object v11

    .line 59
    .local v11, pkgName:Ljava/lang/String;
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_2

    .line 60
    :cond_0
    const/4 v13, 0x0

    .line 128
    :cond_1
    :goto_0
    return-object v13

    .line 63
    :cond_2
    const/4 v4, 0x0

    .line 64
    .local v4, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v13, 0x0

    .line 66
    .local v13, view:Landroid/view/View;
    :try_start_0
    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 67
    const-class v15, Landroid/view/View;

    invoke-virtual {v15, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 68
    const-string v15, "LSO"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " directly/indirectly not inherited from View object"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const/4 v13, 0x0

    goto :goto_0

    .line 72
    :cond_3
    const/4 v15, 0x1

    new-array v10, v15, [Ljava/lang/Class;

    .line 73
    .local v10, partypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const/4 v15, 0x0

    const-class v16, Landroid/content/Context;

    aput-object v16, v10, v15

    .line 75
    const/4 v15, 0x1

    new-array v1, v15, [Ljava/lang/Object;

    .line 76
    .local v1, argList:[Ljava/lang/Object;
    const/4 v15, 0x0

    aput-object p0, v1, v15

    .line 78
    invoke-virtual {v4, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 80
    .local v5, ct:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v5, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object v0, v15

    check-cast v0, Landroid/view/View;

    move-object v13, v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 88
    .end local v1           #argList:[Ljava/lang/Object;
    .end local v5           #ct:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v10           #partypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :goto_1
    if-nez v13, :cond_4

    .line 89
    const/4 v13, 0x0

    goto :goto_0

    .line 82
    :catch_0
    move-exception v6

    .line 83
    .local v6, e:Ljava/lang/ClassNotFoundException;
    const-string v15, "LSO"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " Class not found Exception: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 84
    .end local v6           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v6

    .line 85
    .local v6, e:Ljava/lang/Exception;
    const-string v15, "LSO"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unhandled Exception: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 92
    .end local v6           #e:Ljava/lang/Exception;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/app/enterprise/lso/LSOItemData;->getAttrs()Landroid/app/enterprise/lso/LSOAttributeSet;

    move-result-object v3

    .line 93
    .local v3, attributeSet:Landroid/app/enterprise/lso/LSOAttributeSet;
    invoke-virtual {v3}, Landroid/app/enterprise/lso/LSOAttributeSet;->size()I

    move-result v15

    if-lez v15, :cond_1

    .line 98
    const/4 v15, 0x2

    :try_start_1
    new-array v9, v15, [Ljava/lang/Class;

    .line 99
    .local v9, parameterTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const/4 v15, 0x0

    const-class v16, Ljava/lang/String;

    aput-object v16, v9, v15

    .line 100
    const/4 v15, 0x1

    const-class v16, Ljava/lang/Object;

    aput-object v16, v9, v15

    .line 102
    const-string v15, "setAttribute"

    invoke-virtual {v4, v15, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 103
    .local v12, setAttrMethod:Ljava/lang/reflect/Method;
    const/4 v15, 0x2

    new-array v2, v15, [Ljava/lang/Object;

    .line 105
    .local v2, args:[Ljava/lang/Object;
    const/16 v15, 0x20

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/app/enterprise/lso/LSOItemData;->isFieldUpdated(I)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 106
    const/4 v15, 0x0

    const-string v16, "android:gravity"

    aput-object v16, v2, v15

    .line 107
    const/4 v15, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/app/enterprise/lso/LSOItemData;->getGravity()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v2, v15

    .line 109
    invoke-virtual {v12, v13, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_5
    invoke-virtual {v3}, Landroid/app/enterprise/lso/LSOAttributeSet;->valueSet()Ljava/util/Set;

    move-result-object v14

    .line 113
    .local v14, vs:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 115
    .local v8, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 116
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 117
    .local v7, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v15, 0x0

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v2, v15

    .line 118
    const/4 v15, 0x1

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v2, v15

    .line 120
    invoke-virtual {v12, v13, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_2

    .line 122
    .end local v2           #args:[Ljava/lang/Object;
    .end local v7           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v8           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v9           #parameterTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .end local v12           #setAttrMethod:Ljava/lang/reflect/Method;
    .end local v14           #vs:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :catch_2
    move-exception v6

    .line 123
    .local v6, e:Ljava/lang/NoSuchMethodException;
    const-string v15, "LSO"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " does not support method setAttribute(String,Object) : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 124
    .end local v6           #e:Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v6

    .line 125
    .local v6, e:Ljava/lang/Exception;
    const-string v15, "LSO"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Exception: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
