/* dova-model-0.1.vapi generated by valac 0.11.0.151-6fc7, do not modify. */

[CCode (cprefix = "Dova", lower_case_cprefix = "dova_")]
namespace Dova {
	[CCode (cheader_filename = "dova-model.h")]
	public class ArrayList<T> : Dova.ListModel<T> {
		public ArrayList (Dova.List<T>? list = null);
		public override void append (T element);
		public override void clear ();
		public override bool contains (T element);
		public override T get (int index);
		public override Dova.Iterator<T> iterator ();
		public override bool remove (T element);
		public override void set (int index, T element);
		public void* data { get; }
		public override int length { get; }
	}
	[CCode (cheader_filename = "dova-model.h")]
	public abstract class DequeModel<T> : Dova.Object {
		public DequeModel ();
		public abstract T pop_head ();
		public abstract T pop_tail ();
		public abstract void push_head (T element);
		public abstract void push_tail (T element);
	}
	[CCode (cheader_filename = "dova-model.h")]
	public class HashMap<K,V> : Dova.MapModel<K,V> {
		public HashMap ();
		public bool contains_key (K key);
		public override V get (K key);
		public void remove (K key);
		public override void set (K key, V value);
		public Dova.Iterable<K> keys { get; }
		public int size { get; }
		public Dova.Iterable<V> values { get; }
	}
	[CCode (cheader_filename = "dova-model.h")]
	public class HashSet<T> : Dova.SetModel<T> {
		public HashSet ();
		public override bool add (T element);
		public override void clear ();
		public override bool contains (T element);
		public override Dova.Iterator<T> iterator ();
		public override bool remove (T element);
		public override int size { get; }
	}
	[CCode (cheader_filename = "dova-model.h")]
	public abstract class IntegerModel : Dova.Object {
		public IntegerModel ();
		public abstract int get ();
		public abstract void set (int value);
	}
	[CCode (cheader_filename = "dova-model.h")]
	public class IntegerReference : Dova.IntegerModel {
		public IntegerReference (int value);
		public override int get ();
		public override void set (int value);
	}
	[CCode (cheader_filename = "dova-model.h")]
	public abstract class Iterable<T> : Dova.Object {
		public Iterable ();
		public bool all (FilterFunc<T> func);
		public bool any (FilterFunc<T> func);
		public Dova.Iterable<T> drop (int n);
		public Dova.Iterable<T> filter (FilterFunc<T> func);
		public abstract Dova.Iterator<T> iterator ();
		public Dova.Iterable<R> map<R> (MapFunc<T,R> func);
		public Dova.Iterable<T> take (int n);
		public Dova.List<T> to_list ();
	}
	[CCode (cheader_filename = "dova-model.h")]
	public abstract class ListModel<T> : Dova.Iterable<T> {
		protected ListModel ();
		public abstract void append (T element);
		public abstract void clear ();
		public abstract bool contains (T element);
		public abstract T get (int index);
		public abstract bool remove (T element);
		public abstract void set (int index, T element);
		public abstract int length { get; }
	}
	[CCode (cheader_filename = "dova-model.h")]
	public abstract class MapModel<K,V> : Dova.Object {
		public MapModel ();
		public abstract V get (K key);
		public abstract void set (K key, V value);
	}
	[CCode (cheader_filename = "dova-model.h")]
	public class PriorityQueue<T> : Dova.QueueModel<T> {
		public PriorityQueue (Dova.CompareFunc<T> comparer);
		public override T pop ();
		public override void push (T element);
		public int length { get; private set; }
	}
	[CCode (cheader_filename = "dova-model.h")]
	public abstract class QueueModel<T> : Dova.Object {
		public QueueModel ();
		public abstract T pop ();
		public abstract void push (T element);
	}
	[CCode (cheader_filename = "dova-model.h")]
	public abstract class SetModel<T> : Dova.Iterable<T> {
		protected SetModel ();
		public abstract bool add (T element);
		public abstract void clear ();
		public abstract bool contains (T element);
		public abstract bool remove (T element);
		public abstract int size { get; }
	}
	[CCode (cheader_filename = "dova-model.h")]
	public abstract class StringModel : Dova.Object {
		public StringModel ();
		public abstract string get ();
		public abstract void set (string value);
	}
	[CCode (cheader_filename = "dova-model.h")]
	public class StringReference : Dova.StringModel {
		public StringReference (string value);
		public override string get ();
		public override void set (string value);
	}
	[CCode (cheader_filename = "dova-model.h")]
	public delegate int CompareFunc<T> (T a, T b);
}
[CCode (cprefix = "Debug", lower_case_cprefix = "debug_")]
namespace Debug {
	[CCode (cheader_filename = "dova-model.h")]
	public static void assert (bool expression);
}
[CCode (cheader_filename = "dova-model.h")]
public delegate bool FilterFunc<T> (T element);
[CCode (cheader_filename = "dova-model.h")]
public delegate R MapFunc<T,R> (T element);
