package edu.umass.eflux;
import java.util.*;

/**
 * The Source class represents a source which kicks off activity in
 * a Markov program.
 * @author Brendan burns
 * @version 0.1
 **/
public class Platform {
    protected String name;
    protected Vector<TaskDeclaration> tasks;
    
    /**
     * Constructor
     * @param source The name of the source function.
     * @param target The name of the target unit.
     **/
    public Platform(String name, Vector tasks) {
		this.name = name;
		this.tasks = tasks;
    }

    
    public boolean equals(Object o) {
		if (!(o instanceof Platform)) return false;
		if (((Platform)o).name.equals(this.name)) return true;
		return false;
    }

	public String getName()
	{
		return this.name;
	}

    public int hashCode() {
		//TODO: implement
//		return (source_fn+target).hashCode();
		return 0;
    }

    public String toString() {
		return name;
    }
}
